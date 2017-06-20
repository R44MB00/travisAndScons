object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    var li = l.split(';')
    var cambio=li(1).toDouble-li(0).toDouble
    if(cambio>0){
        println(cambioLetras(cambio))
    }else if(cambio==0){
        println("ZERO")
    }else{
        println("ERROR")
    }
  }
  
  def cambioLetras(x:Double):String={
  var c=x
    var v = Array(100.0,50.0,20.0,10.0,5.0,2.0,1.0,0.5,0.25,0.10,0.05,0.01);
    var n = Array("ONE HUNDRED","FIFTY","TWENTY","TEN","FIVE","TWO","ONE","HALF DOLLAR","QUARTER","DIME","NICKEL","PENNY")
    var r = ""
    for(i <- 0 to v.length-1){
        while(c>=v(i)){
            r+=n(i)+","
            c=c-v(i)
        }
    }
    return r.substring(0,r.length-1)
  }
}
