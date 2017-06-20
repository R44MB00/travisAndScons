var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
    	var	parts = line.split("|");
    	var	left  = parts[0].split(" ");
    	var	right  = parts[1].split(" ");
    	var result = "";
    	for (var i = 0; i < left.length -1; i++) {
    		result += parseInt(left[i])*parseInt(right[i+1]) + " ";
    	}
    console.log(result.trim());
    }
});