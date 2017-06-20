
import scala.collection.mutable.MutableList
/*
 * Title: Fibonacci Series
 * CodeEval: Easy
 * url: https://www.codeeval.com/open_challenges/22/
 */
object Main extends App {
  //read file
  val source = scala.io.Source.fromFile("/home/camilo/test_21")
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    val num = l.toInt
    val fib = MutableList(0,1)
    while(fib.length <= num){
      fib += fib(fib.length -1) + fib(fib.length -2)
    }
    println(fib(fib.length -1))
  }
}
