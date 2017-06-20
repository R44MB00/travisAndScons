var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
	
	if (line!=""){
	
		var parts = line.split(",");
		var idx = parts[1].indexOf(parts[0].charAt(0));
	
		if (idx < 0){

			console.log("False");  	

		}else{

			var str = parts[1].substring(idx, parts[1].length) +
			parts[1].substring(0, idx);
			
			if (str == parts[0]) console.log("True");
			else console.log("False"); 
		}
	}
});