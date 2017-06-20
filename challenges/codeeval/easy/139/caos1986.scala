object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  
  for (l <- lines) {
	var n = l.split(";");
	var a=List[String]();
	for(p <- n){
		a=a union fecL(p.trim());	
	}
	println(a.distinct.length/12);
  }
  
  def fecL(x:String): List[String] = {
	var months=List("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
	var ini = x.split("-")(0).split(" ")(1).trim().toInt;
	var mini = "Jan";
	var fin = x.split("-")(1).split(" ")(1).trim().toInt;
	var mfin = "Dec";
	var a=List[String]();
	for(i <- ini to fin){
		if(i==ini)
			mini=x.split("-")(0).split(" ")(0).trim();
		else
			mini = "Jan";
		if(i==fin)
			mfin=x.split("-")(1).split(" ")(0).trim();
		else
			mfin = "Dec";
		for(j <- months.indexOf(mini)+1 to months.indexOf(mfin)+1){
			a= months(j-1)+" "+i.toString :: a;
		}
	}
	return a;
  }
  
}
