object Main extends App {

  def isCycle(input: Array[String], start: Int, len: Int): Boolean = {
    if ((input.length - start) % len != 0) false
    else {
      (start until input.length).toSeq forall { i =>
        val inputVal = input(i)
        val cycleIndex = ((i - start) % len) + start
        val cycleVal = input(cycleIndex)
        cycleVal == inputVal
      }
    }
  }

  def findCycle(l: Array[String]): Array[String] = {
    for (i <- 0 until l.length) {
      val start = l(i)
      var nextMatch = l.indexOf(start, i + 1)
      var cycle: Array[String] = Array.empty
      while (nextMatch != -1 && cycle.isEmpty) {
        if (isCycle(l, i, nextMatch - i))
          cycle = l.slice(i, nextMatch)
        nextMatch = l.indexOf(start, nextMatch + 1)
      }
      if (!cycle.isEmpty) 
        return cycle
    }
    Array.empty
  }

  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
     val cycle = findCycle(l.split(" "))
     if (!cycle.isEmpty) println(cycle.mkString(" "))
  }

}
