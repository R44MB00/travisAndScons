import math._
import scala.collection.mutable.ListBuffer

object Main extends App {

  def getPrimes(limit: Int): List[Int] = {
    val sieve: Array[Boolean] = Array.fill(limit) { true }
    for {
      i <- 2 to sqrt(limit).toInt if sieve(i)
      j <- i * i until limit by i
    } sieve(j) = false

    val lb = new ListBuffer[Int]
    for (i <- 2 until limit if sieve(i)) lb.append(i)
    lb.toList
  }

  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    println(getPrimes(l.toInt).mkString(","))
  }

}
