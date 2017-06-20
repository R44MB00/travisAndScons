object Main extends App { 

    val source = io.Source.fromFile(args(0))
    print(source.getLines.map(s => {
        val splitted = s.split(",")
        val last = splitted.last.trim
        splitted.head.filterNot(c => last.contains(c))
    }).mkString("\n"))
    source.close()

}
