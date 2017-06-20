import scala.io.Source

object Main {
  def uniqueElements(nums: Array[Int]): List[Int] = Set[Int](nums: _*).toList


  def main(args: Array[String]) {
    val lines = Source.fromFile(args(0)).getLines().filter(_.length > 0)
    for (line <- lines) {
      println(uniqueElements(line.split(",").map(_.toInt)).mkString(","))
    }
  }
}
