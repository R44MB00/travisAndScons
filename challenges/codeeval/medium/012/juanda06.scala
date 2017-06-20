object Main extends App { 

    val source = io.Source.fromFile(args(0))
    print(source.getLines.map(line => line.find(c => line.count(_ == c) == 1).get).mkString("\n"))
    source.close()

}
