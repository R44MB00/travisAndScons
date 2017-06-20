import scala.io.Source

object Main {
  def sumDigits(str: String): Int = str.toList.map(_.asDigit).sum

  def main(args: Array[String]) {
    val lines = Source.fromFile(args(0)).getLines().filter(_.length > 0)
    for (line <- lines) {
      println(sumDigits(line))
    }
  }
}
