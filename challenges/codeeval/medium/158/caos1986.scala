object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    var li=l.split('|')
    var x=li(0).split(' ')
    var y=li(1)
    var o=0;
    if(y.trim().length>10)
        y=y.substring(0,10);
    var pasadas = y.trim().toInt;
    if(pasadas>x.length)
        pasadas=x.length
    for(o <- 1 to pasadas){
        var i=0
        for(i <- 0 to x.length-2){
            if(x(i).toInt>x(i+1).toInt){
                var tmp = x(i)
                x(i) = x(i+1)
                x(i+1)=tmp
            }
        }
    }
    var i=0
    for(i <- 0 to x.length-1){
        print(x(i)+" ")
    }
    println();
  }
}
