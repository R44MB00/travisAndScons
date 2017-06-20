var fs  = require("fs");
fs.readFileSync('./input.txt', 'utf8').toString().split('\n').forEach(function (line) {
    if (line != "") {
        if(line.length <= 55){
        	console.log(line);
        }
        else{
        	var trim = line.substring(0, 39);
        	var and_space = 0;
        	for(var i = 0; i < trim.length; i++){
        		if(trim[i] == " "){
        			end_space = i; // Siempre se asigna los espacios que se presenten y se remplazan el nuemro ascendentemente mientras aparecen
        		}
        	}
        	if(end_space > 0 ){
        		trim = trim.substring(0, end_space);
        	}
        	console.log(trim + "... <Read More>");
        }
    }
})
