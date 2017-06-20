line = "Shellless mollusk lives in wallless house in wellness. Aaaarrghh!";
function logic(str){
	line = str.split("");
	i = 0; 
	while(i < line.length-1){
		aux = line[i];
		j = i+1;
		while(true){
			if(aux == line[j]){
				line.splice(j,1); //remove index (pos,true)
			}else{
				break;
			}
		}
		i++;
	}
	console.log(line.join(""));
}
