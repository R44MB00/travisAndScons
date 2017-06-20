object Main extends App {

  val source = io.Source.fromFile(args(0))
  print(source.getLines.map(line => {
    def cycle(seq: Seq[Int], collection: Seq[Int]): Seq[Int] = {
      if(collection.isEmpty) seq else cycle(seq :+ collection.head, collection.drop(2))
    }
    val collection = line.split(" ").map(_.toInt)
    cycle(Seq(), collection.reverse).mkString(" ")
  }).mkString("\n"))
  source.close()

}
