object Main extends App { 
    
    val source = io.Source.fromFile(args(0))
    print(source.getLines.map(line => {
        val letters = line.foldLeft(Array[Char]())((a, b) => if(b.isLetter && !a.contains(b.toLower)) a :+ b.toLower else a)
        val diff = (97 to 122).diff(letters)
        if(diff.size == 0)
            "NULL"
        else
            diff.sorted.map(_.toChar).mkString
    }).mkString("\n"))
    source.close()

}
