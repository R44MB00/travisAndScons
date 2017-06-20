object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  var flag=true;
  var ant=0;
  for (l <- lines) {
	var lista = l.split(';');
	var e:Array[Int] = new Array[Int](lista.length);
	var i=0;
	for(v <- lista) {
		e(i)=v.trim().split(',')(1).toInt;
		i=i+1;
	}
	var acu=0;
	e=e.sorted;
	var v="";
	for(x <- e){
		acu=x-acu;
		v=v+acu+" ";
		acu=x;
	}
	v=v.trim();
	println(v.replace(" ",","));
  }
  
}
