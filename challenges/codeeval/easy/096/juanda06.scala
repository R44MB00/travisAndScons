

object Main extends App {

  val source  = scala.io.Source.fromFile(args(0))
  val lines   = source.getLines().filter(_.length > 0)

  def flipCase(str: String) = {
    val chars = str.map(chr => if (chr.isUpper) chr.toLower else chr.toUpper)

    chars.mkString("")
  }

  val res = lines.map(flipCase).mkString("\n")

  print(res)
}
