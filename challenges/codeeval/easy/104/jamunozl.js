var fs  = require("fs");
fs.readFileSync("test.txt").toString().split('\n').forEach(function (line) {
    if (line != "") {
        var array = line.split(';');
        lenghtArray=array.length;
        var string = "";
        for (i = 0; i < lenghtArray; i++) {
        	if(array[i] == 'zero'){
        		string += "0"
        	} else if (array[i] == 'one'){
        		string += '1'
        	} else if (array[i] == 'two'){
        		string += '2'
        	} else if (array[i] == 'three'){
        		string += '3'
        	} else if (array[i] == 'four'){
        		string += '4'
        	} else if (array[i] == 'five'){
        		string += '5'
        	} else if (array[i] == 'six'){
        		string += '6'
        	} else if (array[i] == 'seven'){
        		string += '7'
        	} else if (array[i] == 'eight'){
        		string += '8'
        	} else if (array[i] == 'nine'){
        		string += '9'
        	}

        
        } 
        console.log(string);
    }
});
