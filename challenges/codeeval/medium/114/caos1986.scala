object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
	var n = l.split(" ");
	var a = n(0).trim.last.toLong-48;
	var x = n(1).toLong;
	var pat="";
	a match {
		case 0 => pat="0";
		case 1 => pat="1";
		case 2 => pat="2486";
		case 3 => pat="3971";
		case 4 => pat="46";
		case 5 => pat="5";
		case 6 => pat="6";
		case 7 => pat="7931";
		case 8 => pat="8426";
		case 9 => pat="91";
	}
	var vi=x/pat.length;
	var ar =Array[Long](0,0,0,0,0,0,0,0,0,0);	
	for(i<-pat){
		ar(i.toInt-48)=vi;
	}
	var res=x%pat.length;
	for(i <- 0 to res.toInt-1){
		ar(pat(i).toInt-48)+=1;
	}
	var f="";
	for(i <- 0 to 9){
		f+=i+": "+ar(i);
		if(i!=9)
			f+=", ";
	}
	println(f);
  } 
}
