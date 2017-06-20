line = "tooth";
function check(line){
	min = 0;
	for (i = 0; i < line.length; i++){
		if (i == 0){
			chr = line[i];
			min = line.split(chr).length-1;
		}else{
			rep = line.split(line[i]).length-1;
			if( rep < min ){
				min = rep;
				chr = line[i];
			}
		}
	}
	console.log(chr);
}


