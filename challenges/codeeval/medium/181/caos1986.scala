object Main extends App {
  var lang=" !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    var li = l.split(";")
    var key=li(0)
    var letters=li(1).trim()
    if(letters.length>key.length){
        key=key*(letters.length/key.length)
        key+=key.substring(0,letters.length%key.length)
    }else if(letters.length<key.length){
        key=key.substring(0,letters.length)
    }
    var fi=""
    for( i <- 0 to letters.length-1){
        if(lang.indexOf(letters(i))-(key(i).toInt-48)<0){
            fi+=lang(lang.length+(lang.indexOf(letters(i))-(key(i).toInt-48)))
        }else{
            fi+=lang(lang.indexOf(letters(i))-(key(i).toInt-48))
        }
        
    }
    println(fi)
  }
}
