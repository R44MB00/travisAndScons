import java.util.regex.Pattern

object Main extends App {

  val source = scala.io.Source.fromFile(args(0))
  val lines  = source.getLines().filter(_.length > 0)

  case class Point(val x: Int, val y: Int)

  def processLine(line: String):  String = {
    val inner = line.substring(1, line.length() - 1)
    val pieces = inner.split(Pattern.quote(") ("))

    val leftPointStr = pieces(0).split(", ")
    val rightPointStr = pieces(1).split(", ")
    val point1 = Point(leftPointStr(0).toInt, leftPointStr(1).toInt)
    val point2 = Point(rightPointStr(0).toInt, rightPointStr(1).toInt)

    distance(point1, point2).toString

  }

  def distance(point1: Point, point2: Point): Int = {
    val xDiff = point2.x - point1.x
    val yDiff = point2.y - point1.y

    Math.sqrt((xDiff * xDiff) + (yDiff * yDiff)).toInt
  }

  print(lines.map(processLine).mkString("\n"))
}
