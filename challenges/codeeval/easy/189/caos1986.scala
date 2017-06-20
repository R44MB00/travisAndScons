object Main extends App {
  val factory = new javax.script.ScriptEngineManager
  val engine = factory.getEngineByName("JavaScript")
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  var flag=true;
  var ant=0;
  for (l <- lines) {
	var n = l.split(" ");
	var f=true;
	var acu=0;
	var div=0;
	for(s <- n){
		if(f){
			div=s.toInt
			f=false;
		}else{
			acu+=s.toInt
		}
	}
	var mod = acu/div;
	f=true;
	acu=0;
	for(s <- n){
		if(f){
			f=false;
		}else{
			acu+=(mod - s.toInt).abs
		}
	}
	println(acu);
  }
  
}
