import scala.util.matching.Regex

object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  
  for (l <- lines) {
    val li=l.split(" ")
    val pattern = li(0).replace("*",".*").replace("?",".?")
    var x="";
    for(i <- 1 to li.length-1){
        if(li(i).matches(pattern)){
            x+=li(i)+" "
        }
    }
    if(x.length==0)
        println("-")
    else
        println(x)
  }
}
