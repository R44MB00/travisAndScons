var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
            var stringe = line;
            var lista = stringe.split(", ");
            var newstring = "";
            var all = lista[0];
            var toerase = lista[1];
            var pute = 0;
            for (var j in all){
            	pute=0;
            	for (var i in toerase){
            		if (all[j] !== toerase[i]){
            			pute+=1;
            		}else{
            			pute-=1;
            		}
            	}
            	if (pute === toerase.length){
            		newstring+=all[j];
            	}
            
            }
            console.log(newstring.trim());
            
        
    }
});