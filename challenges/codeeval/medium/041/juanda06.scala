object Main extends App { 

    val source = io.Source.fromFile(args(0))
    print(source.getLines.filter(_.size > 0).map(line => {
        val splitted = line.drop(line.indexOf(";")+1).split(",")
        val result = splitted.diff(splitted.distinct)
        if(result.isEmpty) "0" else result.head
    }).mkString("\n"))
    source.close()

}
