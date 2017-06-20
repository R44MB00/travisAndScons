object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    var li=l.replaceAll(" ","")
    var acu=0;
    var i=0
    for(i <- 0 to li.length-1){
        if((i+1)%2==0)
            if(((li(li.length-1-i).toInt-48)*2)>9)
                acu+=((((li(li.length-1-i).toInt-48)*2).toString()(0)).toInt-48+(((li(li.length-1-i).toInt-48)*2).toString()(1).toInt)-48)
            else
                acu+=(((li(li.length-1-i).toInt-48)*2))
        else
            acu+=((li(li.length-1-i).toInt-48))
    }
    if(acu%10==0)
        println(1)
    else
        println(0)
    
  }
}
