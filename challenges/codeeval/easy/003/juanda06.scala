import math._

object Main extends App {

  def isPal(i: String) = {
    i == i.reverse
  }
  
  def isPrime(n: Int) = {
    (2 to sqrt(n.toDouble).toInt).forall(n % _ != 0)
  }
  
  val v = new Range(9, 1000,1).reverse.find(i => isPal(i.toString) && isPrime(i))
  println(v.getOrElse(-1))
  
}
