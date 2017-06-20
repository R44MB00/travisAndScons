import scala.collection.mutable.PriorityQueue
import scala.io.Source

object Main extends App {

  implicit object lenOrdering extends Ordering[String] {
    def compare(s1: String, s2: String) = s1.length - s2.length
  }
  
  val src = Source.fromFile(args(0))
  val lines = src.getLines.filter(_.length > 0)
  val numLines = lines.next.toInt
  val pq = new PriorityQueue[String]()
  
  for (l <- lines) {
    pq.enqueue(l)
  }
  
  for (i <- 1 to numLines) {
    println(pq.dequeue)
  }
}
