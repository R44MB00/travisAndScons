object Main extends App {

  val source = scala.io.Source.fromFile(args(0))
  val lines  = source.getLines().filter(_.length > 0)

  def majorElement(numbers: Array[Int]): Option[Int] = {
    val numberCount = scala.collection.mutable.HashMap[Int, Int]()

    val n = numbers.length / 2

    for(number <- numbers) {
      numberCount.get(number) match {
        case Some(num) => numberCount(number) += 1
        case None => numberCount(number) = 1
      }
    }

    val res = numberCount.filter(pair => pair._2 > n)

    if (res.size > 0) Some(res.head._1)
    else None
  }

  for(line <- lines) {
    val numbers = line.split(",").map(_.toInt)

    majorElement(numbers) match {
      case Some(num) => println(num)
      case None      => println("None")
    }
  }
}
