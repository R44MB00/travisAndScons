import scala.annotation.tailrec
import math._

object Main extends App {
  
  def isPrime(n: Int) = {
    (2 to sqrt(n.toDouble).toInt).forall(n % _ != 0)
  }

  @tailrec
  def helper(primes: List[Int], current: Int, limit: Int): List[Int] = {
    if (primes.length == limit) primes
    else if (primes.forall(p => current % p != 0))
      helper(current :: primes, current + 1, limit)
    else helper(primes, current + 1, limit)
  }
  println(helper(Nil, 2, 1000).sum)
}
