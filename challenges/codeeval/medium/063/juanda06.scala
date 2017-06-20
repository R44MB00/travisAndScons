object Main extends App { 

    def isValid(value: Int) =
    if(value % 2 == 0 && value != 2)
        false
    else {
        def calculate(i: Int): Boolean =
        if(i*i > value)
            true
        else
            if(value % i == 0)
            false
        else
            calculate(i+1)
        calculate(2)
    }
    
    val source = io.Source.fromFile(args(0))
    print(source.getLines.map(line => {
        val splitted = line.split(",").map(_.toInt)
        (splitted.head to splitted.last).fold(0)((a, b) => a + (if(isValid(b)) 1 else 0))
    }).mkString("\n"))
    source.close()

}
