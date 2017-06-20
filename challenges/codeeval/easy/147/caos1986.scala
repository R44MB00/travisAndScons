object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
	var up=0;
	var down=0;
	for(p <- l.trim()){
		if(p.isUpper)
			up+=1;
		else if(p.isLower)
			down+=1;
	}
	var one=(down*100.00)/l.trim().length;
	var two=(up*100.00)/l.trim().length;
	println("lowercase: "+fillZero(trunc(one,1))+" uppercase: "+fillZero(trunc(two,1)));
  }
  
	def trunc(x: Double, n: Int) = {
	  def p10(n: Int, pow: Long = 10): Long = if (n==0) pow else p10(n-1,pow*10)
	  if (n < 0) {
		val m = p10(-n).toDouble
		math.round(x/m) * m
	  }
	  else {
		val m = p10(n).toDouble
		math.round(x*m) / m
	  }
	}  
	
	def fillZero(x:Double) :String ={
		if((x.toString.indexOf(".")-x.toString.length).abs <= 2){
			return x.toString+"0";
		}else{ 
			return x.toString
		}
	}
  
}
