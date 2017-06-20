import scala.collection.mutable.Stack
import scala.io.Source

object Main extends App {

  val operators = List("+", "-", "")

  
  def exprs(input: List[Char]): List[List[Char]] = input match {
    case List(e) => List(List(e))
    case hd :: tail => for {
      op <- operators;
      tailExpr <- exprs(tail)
    } yield (hd + op).toList ++ tailExpr
  }

  def evalOneOperator(operands: Stack[Int], operators: Stack[Char]): Unit = {
    val operator = operators.pop()
    val op1 = operands.pop()
    val op2 = operands.pop()
    if (operator == '+') operands.push(op2 + op1)
    else if (operator == '-') operands.push(op2 - op1)
  }

  def eval(expr: List[Char]): Int = {
    val tokens = expr.mkString.split("((?<=\\+)|(?=\\+))|((?<=-)|(?=-))")
    val operandStack = new Stack[Int]
    val operatorStack = new Stack[Char]
    for (t <- tokens) {
      t match {
        case o if operators contains o =>
          if (!operatorStack.isEmpty) evalOneOperator(operandStack, operatorStack)
          operatorStack.push(o.charAt(0))
        case o => operandStack.push(o.toInt)
      }
    }
    while (!operatorStack.isEmpty) evalOneOperator(operandStack, operatorStack)
    operandStack.top
  }

  def isUgly(i: Int): Boolean = {
    val primes = List(2, 3, 5, 7)
    primes exists (p => i % p == 0)
  }

  val src = Source.fromFile(args(0))
  val lines = src.getLines.filter(_.length > 0)
  for (l <- lines) {
    val expressions = exprs(l.toList)
    println(expressions.map(eval(_)).count(isUgly))
  }
}
