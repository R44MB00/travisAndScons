
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        var texto = line.trim()
        how = 0
        newstr = ""
        for (i = 0 ; i< texto.length; i++){
        	if (/^[a-z]+$/i.test(texto[i])){
        		if (how === 0){
        			newstr += texto[i].toUpperCase()
        			how = 1
        		}else{
        			newstr += texto[i].toLowerCase()
        			how = 0
        			}
        	}else{
                newstr += texto[i]
        	}
        }
        console.log(newstr)
    }
});