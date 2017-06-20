var fs  = require("fs");
fs.readFileSync("test.txt").toString().split('\n').forEach(function (line) {
    if (line != "") {
    	integer=parseInt(line);
    	for(ii=0;ii<100;ii++){
    	  	number=integer;
    	  	if(number==invert(number.toString())){
    			console.log(ii,number);
    			ii=11;
    		}
    		integer = number+invert(number.toString());
	    }
	}
});
function invert(a) {
    var array = a.split('');
    long =array.length;
    var numberResult = [];
    for (i=long-1;i>=0;i--){
    	numberResult.push(array[i]);
    }
    numberResult=parseInt(numberResult.join(""));
    return numberResult                // Function returns the product of a and b
}
