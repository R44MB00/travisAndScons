object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  var flag=true;
  var ant=0;
  for (l <- lines) {
	var lista = l.split(" ");
	var cur=lista(0);
	var count=0;
	var res="";
	for(v <- lista){
		if(v != cur){
			res+=count+" "+cur+" ";
			count=1;
			cur=v;
		}else{
			count+=1;
		}
	}
	res+=count+" "+cur+" ";
	println(res);	

  }
  
}
