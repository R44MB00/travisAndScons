import scala.runtime.RichChar
import scala.annotation.tailrec

object Main extends App {

  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    val chars: List[RichChar] = l.toList.map(new RichChar(_))
    println(permutations(chars).map(_.mkString("")).sorted.mkString(","))
  }

  def permutations[T](l: List[T]): List[List[T]] = l match {
    case List() => List(List())
    case _ => for {
      e <- l;
      rest <- permutations(l filterNot (_ == e))
    } yield e :: rest
  }
}
