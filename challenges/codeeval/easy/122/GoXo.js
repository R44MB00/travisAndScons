var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    var alphaB = "abcdefghij";
    var str = "";
    if (line != "") {
    	str = "";
        for (var i = 0; i < line.length; i++) {
            if (alphaB.includes(line[i])){
               str += alphaB.indexOf(line[i]);
            }
            if (Number.isInteger(parseInt(line[i]))){
                str += line[i];
            }
        }
        if (str.length>0) 	console.log(str);
        else console.log("NONE");
    }
});