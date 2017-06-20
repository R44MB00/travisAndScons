import scala.annotation.tailrec

object Main extends App {

  sealed class Brace
  case class Open(val typ: Char)  extends Brace
  case class Close(val typ: Char) extends Brace

  def isValid(braces: List[Brace]): Boolean = {
    @tailrec
    def iter(braces: List[Brace], acc: List[Brace]): Boolean =  {
      braces match {
        case List() if !acc.isEmpty => false
        case List()                 => true
        case head :: tail           => head match {
          case Open(x)  => iter(tail, Open(x) :: acc)
          case Close(x) => {
            if (acc.isEmpty) false
            else acc.head match {
              case Open(y) if x == y => iter(tail, acc.tail)
              case _ => false
            }
          }
        }
      }
    }

    if (braces.isEmpty) true
    else iter(braces, List())

  }

  def processLine(line:String): String = {
    val chars = line.toCharArray.toList

    val braces = chars.map {
      case '(' => Open('(')
      case '[' => Open('[')
      case '{' => Open('{')
      case ')' => Close('(')
      case ']' => Close('[')
      case '}' => Close('{')
    }

    if(isValid(braces.toList)) "True"
    else "False"
  }

  val source  = scala.io.Source.fromFile(args(0))
  val lines   = source.getLines().filter(_.length > 0)

  lines.map(processLine).foreach(println)
}
