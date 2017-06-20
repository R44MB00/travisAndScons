object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
	for(i <- 1 to 6){
		for(s <- l){
			if(s.isDigit)
				print(valueAt(i,s.toString));
		}
		println();
	}
  } 
  
  def valueAt(x:Int, y:String):String={
	y match {
		case "0" =>{
			x match {
				case 1 => return "-**--";
				case 2 => return "*--*-";
				case 3 => return "*--*-";
				case 4 => return "*--*-";
				case 5 => return "-**--";
				case 6 => return "-----";				
			}
		}
		case "1" =>{
			x match {
				case 1 => return "--*--";
				case 2 => return "-**--";
				case 3 => return "--*--";
				case 4 => return "--*--";
				case 5 => return "-***-";
				case 6 => return "-----";				
			}
		}
		case "2" =>{
			x match {
				case 1 => return "***--";
				case 2 => return "---*-";
				case 3 => return "-**--";
				case 4 => return "*----";
				case 5 => return "****-";
				case 6 => return "-----";				
			}
		}
		case "3" =>{
			x match {
				case 1 => return "***--";
				case 2 => return "---*-";
				case 3 => return "-**--";
				case 4 => return "---*-";
				case 5 => return "***--";
				case 6 => return "-----";				
			}
		}
		case "4" =>{
			x match {
				case 1 => return "-*---";
				case 2 => return "*--*-";
				case 3 => return "****-";
				case 4 => return "---*-";
				case 5 => return "---*-";
				case 6 => return "-----";			
			}
		}		
		case "5" =>{
			x match {
				case 1 => return "****-";
				case 2 => return "*----";
				case 3 => return "***--";
				case 4 => return "---*-";
				case 5 => return "***--";
				case 6 => return "-----";				
			}
		}
		case "6" =>{
			x match {
				case 1 => return "-**--";
				case 2 => return "*----";
				case 3 => return "***--";
				case 4 => return "*--*-";
				case 5 => return "-**--";
				case 6 => return "-----";			
			}
		}
		case "7" =>{
			x match {
				case 1 => return "****-";
				case 2 => return "---*-";
				case 3 => return "--*--";
				case 4 => return "-*---";
				case 5 => return "-*---";
				case 6 => return "-----";				
			}
		}
		case "8" =>{
			x match {
				case 1 => return "-**--";
				case 2 => return "*--*-";
				case 3 => return "-**--";
				case 4 => return "*--*-";
				case 5 => return "-**--";
				case 6 => return "-----";		
			}
		}
		case "9" =>{
			x match {
				case 1 => return "-**--";
				case 2 => return "*--*-";
				case 3 => return "-***-";
				case 4 => return "---*-";
				case 5 => return "-**--";
				case 6 => return "-----";				
			}
		}		
	}
  }
  
}
