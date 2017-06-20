import java.util.regex.Pattern


object Main extends App {
  case class Point(x: Float, y: Float)
  case class Circle(radius: Float, point: Point)

  def pointInCircle(circle: Circle, point: Point): Boolean = {
    def distance(point1: Point, point2: Point): Float = {
      val xDiff = point2.x - point1.x
      val yDiff = point2.y - point1.y

      Math.abs(Math.sqrt((xDiff * xDiff) + (yDiff * yDiff))).toFloat
    }

    distance(point, circle.point) < circle.radius
  }


  val source = scala.io.Source.fromFile(args(0))
  val lines  = source.getLines().filter(_.length > 0)

  def processLine(line: String): String = {
    def parsePoint(line: String): Point = {
      val Array(circXStr, circYStr) = line.split(Pattern.quote("("))(1).split(", ")

      val circX = circXStr.toFloat
      val circY = circYStr.substring(0, circYStr.indexOf(')')).toFloat

      Point(circX, circY)
    }

    val Array(center, radiusStr, pointStr) = line.split(";")

    val circleCenter = parsePoint(center)
    val radius       = radiusStr.split(":")(1).toFloat
    val point        = parsePoint(pointStr)

    pointInCircle(Circle(radius, circleCenter), point).toString
  }

  lines.map(processLine).foreach(println)
}
