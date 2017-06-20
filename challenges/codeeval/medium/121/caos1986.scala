object Main extends App {
  val origen="abcdefghijklmnopqrstuvwxyz";
  val destin="ynficwlbkuomxsevzpdrjgthaq";
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
  var f="";
    for (c <- l){
		if(c.isLetter)
			f+=origen(destin.indexOf(c));
		else
			f+=c
	}
	println(f);
  }
}
