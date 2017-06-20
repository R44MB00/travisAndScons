object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
	var n = l.split(",");
	if(n(0).lastIndexOf(n(1))==(n(0).length-n(1).length).abs)
		println(1);
	else
		println(0);
	
  } 
}
