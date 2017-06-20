

import scala.annotation.tailrec

object Main extends App {

  def isArmstrong(num: Int): Boolean = {

    @tailrec
    def digits(num: Int, acc: Vector[Int]): Vector[Int] = num match {
      case 0 => acc
      case _ => digits(num / 10, num % 10 +: acc)
    }

    val digs = digits(num, Vector())
    val len = digs.length

    digs.map(digit => Math.pow(digit, len)).sum == num
  }

  val source = scala.io.Source.fromFile(args(0))
  val lines  = source.getLines().filter(_.length > 0)

  val result = lines.map(line => isArmstrong(line.toInt) match {
    case true => "True"
    case _    => "False"
  })

  result.foreach(println)
}
