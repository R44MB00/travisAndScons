
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        var conect = line.trim()
        var stringe = "... <Read More>";
        var sub = "";
        if (conect.length <= 55){
        	console.log(conect)
        }else {
        	conect.trim();
        	sub = conect.substring(0,39);
        	sub.trim();
        	console.log((sub+stringe).trim());
        }
        
    }
});