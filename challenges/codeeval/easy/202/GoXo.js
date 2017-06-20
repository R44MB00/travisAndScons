var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
       	var words = line.split(" ");
    	var theWord = "";
    	var result = "";
    	var ast = "";
    	var len = 0;
    	for (i = 0; i< words.length; i++){
    		if (words[i].length > len){
    			len = words[i].length;
    			theWord = words[i];
    		}
    	}
    	for (i = 0; i< theWord.length; i++){
    		result +=  ast +theWord[i] + " ";
    		ast += '*'
    	}
    	console.log(result);	
});