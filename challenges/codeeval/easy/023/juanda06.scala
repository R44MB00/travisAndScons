import scala.io.Source

object Main extends App {

  for (i <- 1 to 12) {
	val line = (1 to 12).map(v => "%4d".format(v*i)).mkString("").trim
    println(line)
  }
  
}
