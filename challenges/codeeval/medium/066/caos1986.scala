object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
	var ant="1 "
	var r = ant;
	for(i <- 1 to l.toInt-1){
		var t="";
		for(j <- 0 to ((i/2)+(i%2))-(i%2)){
			t+=(valueAt(j,ant)+valueAt(j+1,ant)+" ");
		}
		if(i%2!=0)
			ant=t+rever(t);
		else
			ant=t+rever(t).substring(t.trim.reverse.indexOf(" ")+1);
		r+=ant;
		
	}
	println(r);
  } 
  
  def valueAt(x:Int, y:String):Int={
	var t=y.split(" ");
	if(x==0)
		return 0;
	if(x==t.length+1)
		return 0;
	return t(x-1).toInt;
  }
  
  def rever(x:String):String={
	var l=x.split(" ");
	var r="";
	for(s <- l){
		r= s+" "+r;
	}
	return r;
  }
  
}
