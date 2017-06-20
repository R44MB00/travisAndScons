
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        number= parseInt(line);

        for (i=0;i<=50;i++){
        	
        	array=number.toString().split("");
        	var result=array.map(Number);
        	for (var x=0,l=array.length;x<l;x++) result.push(+array[x]); 
        	finalResult=0;
        	for(j=0;j<=array.length-1;j++){
        		power=(result[j])*(result[j]);
        		finalResult=finalResult+power;
        	}
        	number=finalResult;
        }
        if (number==1){
        	console.log(finalResult);
        }else{
        	console.log('0');
        }
    }
});
