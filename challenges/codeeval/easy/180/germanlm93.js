function conver(col){
	switch(col){
		case "a": return 0;
		case "b": return 1;
		case "c": return 2;
		case "d": return 3;
		case "e": return 4;
		case "f": return 5;
		case "g": return 6;
		case "h": return 7;
	}
}
function toLet(col){
	switch(col){
		case 0: return "a";
		case 1: return "b";
		case 2: return "c";
		case 3: return "d";
		case 4: return "e";
		case 5: return "f";
		case 6: return "g";
		case 7: return "h";
	}
}
function check(row,col){
	if(row >= 0 && row <= 7 && col >= 0 && col <=7){
		return true;
	}else{
		return false;
	}
}
function movements(line){
	col = conver(line.split("")[0]);
	row = 8 - parseInt(line.split("")[1]);
	result = "";
	/*		IZQ		*/
	auxr = row+1;
	auxc = col-2;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	auxr = row-1;
	auxc = col-2;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	/*		ARR		*/
	auxr = row-2;
	auxc = col-1;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	auxr = row-2;
	auxc = col+1;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	/*		DER		*/
	auxr = row-1;
	auxc = col+2;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	auxr = row+1;
	auxc = col+2;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	/*		ABA		*/
	auxr = row+2;
	auxc = col+1;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	auxr = row+2;
	auxc = col-1;
	if (check(auxr,auxc)==true){
		result += toLet(auxc)+(8-auxr)+" ";
	}
	console.log(result.trim());
}<
