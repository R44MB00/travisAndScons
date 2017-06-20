object Main extends App { 

    val source = io.Source.fromFile(args(0))
    print(source.getLines.filter(_.length > 0).map(s => { 
        val splitted = s.split(",")
        val last = splitted.last
        if(splitted.head.takeRight(last.size) == last) 1 else 0
    }).mkString("\n"))
    source.close()

}
