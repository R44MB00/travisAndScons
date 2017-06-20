object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    var e=l.split(" ")
    var ei = e(0).split(":")
    var ed = e(1).split(":")
    var hi=ei(0).toInt*3600
    hi+=ei(1).toInt*60
    hi+=ei(2).toInt
    var hd=ed(0).toInt*3600
    hd+=ed(1).toInt*60
    hd+=ed(2).toInt    
    println("%02d:".format(((hi-hd).abs)/3600)+"%02d:".format((((hi-hd).abs)%3600)/60)+"%02d".format((((hi-hd).abs)%3600)%60))
  }
}
