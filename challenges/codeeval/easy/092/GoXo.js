var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
    	var	words = line.split(" ");
        if (words.length <=1 ) console.log(words[0]);
        else console.log(words[words.length -2]);
    }
});