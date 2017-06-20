object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  var flag=true;
  var ant=0;
  for (l <- lines) {
	var n = l.split(",");
	var len = n.length/2;
	var d = scala.collection.mutable.Map[String,Int]()
	for(s <- n){
		if(d.contains(s))
			d(s) = d(s) + 1;
		else
			d(s) = 1;
	}
	var fin="";
	var flag=false;
	d.keys.foreach{ i =>  
					if(d(i)>len){
                           println(i)
						   flag=true;
						}
				 }
	if(!flag)
		println("none");
  }
  
}
