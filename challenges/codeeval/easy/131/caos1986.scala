object Main extends App {
  val factory = new javax.script.ScriptEngineManager
  val engine = factory.getEngineByName("JavaScript")
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  var flag=true;
  var ant=0;
  for (l <- lines) {
	var n = l.split(" ");
	var acu=0;
	var f="";
	for(s <- n(1)){
		if(s.isLetter){
			f+=n(0)(acu);
			acu+=1;
		}else{
			f+=s
		}
	}
	if(f.indexOf("+") != -1){
		var t = f.split('+')
		println(t(0).toInt+t(1).toInt)
	}else{
		var t = f.split('-')
		println(t(0).toInt - t(1).toInt)
	}
  }
  
}
