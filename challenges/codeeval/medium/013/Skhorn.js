var fs  = require("fs");
var array = [];
var words = "";
var to_erase = [];
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        array = line.split(',');
        to_erase = array[1];
        words = array[0];
        for(var i = 1; i <= to_erase.length ; i++)
        {	
        	if(words.indexOf(to_erase[i]) !== -1)
        		words = words.replace(new RegExp(to_erase[i], "g"), '');
        }
        console.log(words);
    }
});