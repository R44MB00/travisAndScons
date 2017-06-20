
import scala.util.matching.Regex;

object Main extends App {
  val pattern = "[\\w\\d\\.]+@[\\w\\d\\.]+\\.(com|org|net)".r

  val source = scala.io.Source.fromFile(args(0))
  val lines  = source.getLines().filter(_.length > 0)

  def processLine(line: String): Boolean = {
    pattern.findFirstIn(line).isDefined
  }

  lines.map(processLine).foreach(println)

}
