import scala.io.Source

object Main extends App {

  val src = Source.fromFile(args(0))
  val lines = src.getLines().filter(_.length > 0)
  for (l <- lines) {
    println(l.split(" ").map(v => (v, v.toFloat)).sortBy(_._2).map(_._1).mkString(" "))
  }
}
