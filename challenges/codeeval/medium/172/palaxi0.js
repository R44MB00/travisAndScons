function sumdigitsx2(strsop){
        	var suma =0;
        	var numstring =(parseInt(strsop)*2).toString();
        	if (parseInt(numstring)>9){
        		for (var i in numstring){
        			suma+= parseInt(numstring[i]);
        		}
        	}else{
        		suma += parseInt(numstring);
        	}
        	return suma;
        }
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        var tarj =line;
        var sumtotal = 0;
        var number = tarj.replace(/\D/g,'');
        var count =0;
        for (i=number.length-1;i >= 0; i--){
        	if (count===0){
        		sumtotal+= parseInt(number[i]);
        		count = 1;
        	}else{
        		sumtotal += sumdigitsx2(number[i])
        		count =0;
        	}
        }
    if(sumtotal%10 ===0){
    	console.log(1);
    }else{
    	console.log(0);
    }
        }
});