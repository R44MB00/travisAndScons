import scala.collection.mutable.Stack

object Main extends App {

  val tokenToOperator = Map(
    "+" -> { (x: Int, y: Int) => x + y },
    "-" -> { (x: Int, y: Int) => x - y },
    "*" -> { (x: Int, y: Int) => x * y },
    "/" -> { (x: Int, y: Int) => x / y })

  def isOperator(tok: String) = tokenToOperator contains tok

  def eval(expr: String): Int = {
    val stack = new Stack[Int]
    val reversed = expr.split(" ").reverse

    for (t <- reversed) {
      if (isOperator(t)) {
        val op1 = stack.pop
        val op2 = stack.pop
        val operator = tokenToOperator(t)
        stack.push(operator(op1, op2))
      } else {
        stack.push(t.toInt)
      }
    }
    stack.pop
  }

  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    println(eval(l))
  }
}
