object Main extends App { 

    val source = io.Source.fromFile(args(0))
    print(source.getLines.map(line => {
        val (a, b) = line.split(",").map(_.toInt).splitAt(4)
        val result = a(0) <= b(2) && a(2) >= b(0) && a(3) <= b(1) && a(1) >= b(3)
        if(result) "True" else "False"
    }).mkString("\n"))
    source.close()

}
