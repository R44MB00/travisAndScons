object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    var n = l.toInt;
	if(n>=0 && n<=2)
		println("Still in Mama's arms");
	else if(n>=3 && n<=4)
		println("Preschool Maniac");
	else if(n>=5 && n<=11)
		println("Elementary school" );
	else if(n>=12 && n<=14)
		println("Middle school" );
	else if(n>=15 && n<=18)
		println("High school" );
	else if(n>=19 && n<=22)
		println("College");
	else if(n>=23 && n<=65)
		println("Working for the man" );
	else if(n>=66 && n<=100)
		println("The Golden Years" );
	else
		println("This program is for humans");

  }
}
