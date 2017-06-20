object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
	var n = l.split(";");
	var i=n(0).split(" ");
	var d=n(1).split(" ");
	var a : Array[String] = new Array[String](i.length);
	var sumc=0;
	for(p <- 1 to i.length){
		sumc+=p;
	}
	var sumi=0;
	for(p <- 0 until d.length){
		sumi+=d(p).toInt;
		a(d(p).toInt-1)=i(p);
	}
	a((sumc-sumi-1).abs)=i(i.length-1);
	var f="";
	for(p <- a){
		f+=p+" ";
	}
	println(f);
	
  }
}
