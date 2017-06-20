import scala.annotation.tailrec

object Main extends App {

  def isRotation(str: String, str2: String): Boolean = {
    @tailrec
    def iter(lst: List[Char], cur: List[Char], index: Int): Boolean = {
      if(lst == cur) true
      else if (index > (str.length - 1)) false
      else iter(lst,  cur.tail ++ Some(cur.head), index + 1)
    }

    iter(str.toList, str2.toList, 1)
  }

  def processLine(line: String): String = {
    val Array(left, right) = line.split(",")

    if(isRotation(left, right)) "True"
    else "False"
  }


  val source  = scala.io.Source.fromFile(args(0))
  val lines   = source.getLines().filter(_.length > 0)

  lines.map(processLine).foreach(println)
}
