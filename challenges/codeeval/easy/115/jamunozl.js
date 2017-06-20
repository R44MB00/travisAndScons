var fs  = require("fs");
fs.readFileSync("test.txt").toString().split('\n').forEach(function (line) {
    if (line != "") {
    	var letter= []
    	var numberResult = []
    	var array = line.split(','); //split string por ,
    	lenghtArray=array.length; // longitud array
    	for (i = 0; i < lenghtArray; i++) {
    		number = parseInt(array[i]);//paso a entero
    		
    		if (isNaN(number)==true){  //si no es numero la funcion devuelve true
    			numberResult.push(array[i]);
    		}
    		else{
    			letter.push(array[i]);
    		}
        }
    if (numberResult.length > 0 && letter.length > 0) {
    	console.log(numberResult.join()+'|'+letter.join())
    }
    else if (numberResult.length==0 && letter.length>0){
    	console.log(letter.join())
    }
    else if(numberResult.length>0 && letter.length==0){
    	console.log(numberResult.join())
    }
    }
    
});
