object Main {
  def main(args: Array[String]) {
    val nums = (1 until 100) filter { i => i % 2 != 0 }
    nums foreach { println(_) }
  }
}
