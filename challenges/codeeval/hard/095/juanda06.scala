import Number._

object Main extends App { 

  import java.math.BigDecimal
  import java.text.DecimalFormat

  val handler = new ConstantHandler
  val calc = new Calculator(handler)
  val source = io.Source.fromFile(args(0))
  val strings = source.getLines.filter(_.length > 0)
  val results = strings.map(exp => calc.parse(exp).result.value )
  val f =  new DecimalFormat("#.#####")
  val formatted = results.map(value => f.format(new BigDecimal(value).setScale(5, BigDecimal.ROUND_HALF_UP).stripTrailingZeros().doubleValue()))
  print(formatted.mkString("\n"))
  source.close()

}

class Calculator(handler: VariableHandler) {

  import java.util.regex.Pattern
  import scala.util.parsing.combinator._

  def normalizeAbs(text: String, in: Int, offset: Int, first: Boolean): String = {
    // |(-770.94) + |e + 866| / |Pi + 932| * 647.91|
    if(text.count(_ == '|') == 0)
      return text
    val index = text.indexOf("|", offset)
    val c = if(index == 0) ' ' else text.charAt(index-1)
    if(((c == ' ' || c == '(') == first) && in % 2 == 0)
        normalizeAbs(text.take(index)+text.substring(index+1).replaceFirst("|", if(first) "abs(" else ")"), 0, 0, !first)
      else
        normalizeAbs(text, in+1, index+1, first)
    } 

  def normalizeBracket(text: String, f: (String) => String): String = 
  if(Pattern.compile(f(",")).matcher(text).find) {
    val result = f("")
    normalizeBracket(text.replaceAll(result, "($1)"), f) 
  }
  else
    text

  def normalize(text: String): String = {

    val in_bracket = (s: String) => f"\\({2$s}([[0-9\\+\\-\\*]&&[^\\(\\)]]+)\\){2$s}"
    val out_bracket = (s: String) => f"\\({3$s}(.*?)\\){3$s}"

    normalizeAbs(normalizeBracket(normalizeBracket(text, in_bracket), out_bracket), 0, 0, true).replaceAll("\\s", "")
  }

  def parse(text: String) = ExpressionParser.parse(normalize(text))

  object ExpressionParser extends JavaTokenParsers {

    type T = ExpressionMember

    private def expression: Parser[T] = {
      rep(operation | value) ^^ (new Expression(_))
    }

    val map = Map(
      "(?i)(sqrt)" -> (() => new SquareRoot),
      "(?i)(cos)" -> (() => new Cosine),
      "(?i)(sin)" -> (() => new Sine),
      "(?i)(tan)" -> (() => new Tangent),
      "(?i)(lg)" -> (() => new DecimalLogarithm),
      "(?i)(ln)" -> (() => new NaturalLogarithm),
      "(?i)(mod)" -> (() => new Modulo),
      "(?i)(abs)" -> (() => new Absolute),
      "\\+" -> (() => new Plus),
      "-" -> (() => new Minus),
      "\\*" -> (() => new Multiply),
      "/" -> (() => new Division),
      "\\^" -> (() => new Power),
      "\\!" -> (() => new Factorial)
    )

  private def operation: Parser[T] = {
    map.foldLeft[Option[Parser[T]]](None)(
      (p: Option[Parser[T]], t: (String, () => T)) => {
        val c = t._1.r ^^ (a => t._2())
        Option(p match {
            case Some(s) => s | c
            case _ => c
          })
      }).get
  }

  private def value: Parser[T] = {
    "(" ~> expression <~ ")" |
    floatingPointNumber ^^ (x => new Number(x.toDouble)) |
    "([a-zA-Z0-9])+".r ^^ (x => new Variable(handler, x))
  }

  private def transformExpression(expression: Expression) = (expression /: expression.list)((exp, mem) => mem match { case m: Transformable => if(m.isNeeded(exp)) m.patch(exp) else exp; case _ => exp })

  private def fullyTransformExpression(expression: Expression): Expression = {
    def weedInstances(e: Expression) = (List[Expression]() /: e.list)((t, m) => m match { case o: Expression => t :+ o; case _ => t })

    val innerExpressions = weedInstances(expression)
    val transformed = innerExpressions.map((e) => transformExpression(e))
    val patched = transformed.map((e) => fullyTransformExpression(e))
    new Expression(expression.list.foldLeft((0, List[ExpressionMember]()))((t: (Int, List[ExpressionMember]), any: ExpressionMember) => {
        any match {
          case e: Expression => (t._1+1, t._2 :+ patched(t._1))
          case a => (t._1, t._2 :+ a)
        }
      })._2)
  }

  def parse(text: String) =
  parseAll(expression, text) match {
    case r: Success[_] => fullyTransformExpression(transformExpression(r.get.asInstanceOf[Expression]))
    case _ => throw new IllegalArgumentException("Wrong expression "+text)
  }
}

}

abstract class ExpressionMember {

  protected def position(expression: Expression) = expression.list.indexOf(this)

  def result(expression: Expression): Number

  def equals(obj: Any): Boolean

  def hashCode(): Int

}

class Expression(val list: List[ExpressionMember])
extends ExpressionMember {

  def result(): Number = result(this)

  override def result(expression: Expression) = {
  def weedInstances(e: Expression) = (List[Operation]() /: e.list)((t, m) => m match { case o: Operation => t :+ o; case _ => t })
    val operations = weedInstances(this)
    if(list.isEmpty)
      new Number(0.0)
    else
      (if(operations.size > 0) operations.sorted else list).head.result(this)
  }

  def canEqual(other: Any) = other.isInstanceOf[Expression]

  override def hashCode() = Seq(list).map(_.hashCode()).foldLeft(0)((a, b) => 31 * a + b)

  override def equals(other: Any) = other match {
    case that: Expression =>
    (that canEqual this) &&
    list.sameElements(that.list)
    case _ => false
  }

}

class Number(val value: Double)
extends ExpressionMember {

  def result(expression: Expression) = this

  override def hashCode() = value.hashCode()

  override def equals(obj: Any) =
  obj match {
    case o: Number => value == o.value
    case _ => false
  }

}

object Number {

  implicit def number2float(number: Number) = number.value

}

class Variable(handler: VariableHandler, val name: String)
extends ExpressionMember {

  override def result(exp: Expression) = handler.handle(this, exp)

  override def equals(other: Any) = other match {
    case that: Variable => that eq this
    case _ => false
  }

  override def hashCode() = name.hashCode()

}

trait VariableHandler {

  def handle(variable: Variable, exp: Expression): Number 

}

class ConstantHandler extends VariableHandler {

  val constants = Map("pi" -> new Number(math.Pi.toDouble), "e" -> new Number(math.E.toDouble))

  override def handle(variable: Variable, exp: Expression) = 
    constants.find(arg => arg._1.equalsIgnoreCase(variable.name)).getOrElse(("", new Number(0.0)))._2

}


abstract class Operation
(val action: (((Double, Double)) => Double), protected val priority: Int = 0)
extends ExpressionMember with Ordered[Operation] {

  protected val elements_to_remove: Int

  protected def removeFrom(expression: Expression): Int

  protected def coupleValues(e: Expression): (Double, Double)

  protected def couple(e: Expression): (ExpressionMember, ExpressionMember)

  def compare(other: Operation) = priority compare other.priority

  override def result(expression: Expression) = {
    val number = new Number(action(coupleValues(expression)))
    val result = expression.list.patch(removeFrom(expression), Seq(number), elements_to_remove)
    if(result.size == 1)
      number
    else
      new Expression(result).result
  }

  def canEqual(other: Any): Boolean = other.isInstanceOf[Operation]

  override def hashCode() = Seq(priority, action, elements_to_remove).map(_.hashCode()).foldLeft(0)((a, b) => 31 * a + b)

  override def equals(other: Any) = other match { // dirty
    case a: AnyRef => a eq this
    case _ => false
  }

}


trait Transformable extends ExpressionMember {

  def isNeeded(expression: Expression): Boolean

  def patch(expression: Expression) = new Expression(expression.list.patch(position(expression), Seq(transform(expression)), 1))

  def transform(expression: Expression): ExpressionMember

}


trait BinaryToUnaryTransformable extends Transformable {

  def isNeeded(expression: Expression) = {
    val p = position(expression)
    p == 0 || expression.list(p-1).isInstanceOf[Operation]
  }

}

trait BinaryOperation extends Operation {

  override val elements_to_remove = 3

  override def removeFrom(expression: Expression) = position(expression) - 1

  override def couple(expression: Expression): (ExpressionMember, ExpressionMember) =
  (expression.list(position(expression) - 1), expression.list(position(expression) + 1))

  override def coupleValues(expression: Expression): (Double, Double) = {
    val c = couple(expression)
    (c._1.result(expression), c._2.result(expression))
  }

}


trait UnaryOperationBefore extends Operation {

  override val elements_to_remove = 2

  override def removeFrom(expression: Expression) = position(expression)

  override def couple(expression: Expression): (ExpressionMember, ExpressionMember) = {
    (null, expression.list(position(expression) + 1))
  }

  override def coupleValues(expression: Expression): (Double, Double) = {
    (0.0, couple(expression)._2.result(expression))
  }

}

trait UnaryOperationAfter extends UnaryOperationBefore {

  override def removeFrom(expression: Expression) = super.removeFrom(expression) - 1

  override def couple(expression: Expression): (ExpressionMember, ExpressionMember) = {
    (expression.list(position(expression) - 1), null)
  }

  override def coupleValues(expression: Expression): (Double, Double) =
  (couple(expression)._1.result(expression), 0.0)

}


class Minus(priority: Int = 8) extends Operation((couple: (Double, Double)) => couple._1 - couple._2, priority)
with BinaryOperation with BinaryToUnaryTransformable {
  override def transform(expression: Expression) = new Minus(4) with UnaryOperationBefore
}

class Plus(priority: Int = 8) extends Operation((couple: (Double, Double)) => couple._1 + couple._2, priority)
with BinaryOperation with BinaryToUnaryTransformable {
  override def transform(expression: Expression) = new Plus(4) with UnaryOperationBefore
}

class Modulo extends Operation((couple: (Double, Double)) => couple._1.toInt % couple._2.toInt, 6)
with BinaryOperation

class Multiply extends Operation((couple: (Double, Double)) => couple._1 * couple._2, 7)
with BinaryOperation

class Division extends Operation((couple: (Double, Double)) => couple._1 / couple._2, 7)
with BinaryOperation

class Power extends Operation((couple: (Double, Double)) => math.pow(couple._1, couple._2).toDouble, 5)
with BinaryOperation

class Cosine extends Operation((couple: (Double, Double)) => math.cos(couple._2).toDouble)
with UnaryOperationBefore

class Sine extends Operation((couple: (Double, Double)) => math.sin(couple._2).toDouble)
with UnaryOperationBefore

class Tangent extends Operation((couple: (Double, Double)) => math.tan(couple._2).toDouble)
with UnaryOperationBefore

class DecimalLogarithm extends Operation((couple: (Double, Double)) => math.log10(couple._2).toDouble)
with UnaryOperationBefore

class NaturalLogarithm extends Operation((couple: (Double, Double)) => math.log(couple._2).toDouble)
with UnaryOperationBefore

class Absolute extends Operation((couple: (Double, Double)) => math.abs(couple._2), 2)
with UnaryOperationBefore

class SquareRoot extends Operation((couple: (Double, Double)) => math.sqrt(couple._2).toDouble)
with UnaryOperationBefore

class Factorial extends Operation((couple: (Double, Double)) => if(couple._1 <= 1) 1 else (2 to couple._1.toInt).reduce(_*_), 3)
with UnaryOperationAfter
