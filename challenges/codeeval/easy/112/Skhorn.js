var fs  = require("fs");
var array = [];
var numbers_arr = [];
var swap = [];

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        array = line.split(':');
        //console.log(array);	
        numbers_arr = array[0].split(' ');
        swap = array[1].split(/[ \-\,]/);
		
        for (var i = 0; i < swap.length; i++) {
		    if (swap[i] == '') {         
		      swap.splice(i, 1);
		      i--;
		    }
		}

		for (var i = 0; i < numbers_arr.length; i++) {
		    if (numbers_arr[i] == '') {         
		      numbers_arr.splice(i, 1);
		      i--;
		    }
		}

		//console.log(swap.length);
        //console.log(numbers_arr);	
        var i = 0;
        for(var i = 0; i < swap.length; i+=2){
	        temp = numbers_arr[swap[i]];
	    	//console.log(temp);
	    	numbers_arr[swap[i]] = numbers_arr[swap[i+1]];
	    	numbers_arr[swap[i+1]] = temp;
	    }
	    to_print = "";
	    for(var j = 0; j < numbers_arr.length; j++)
	    {
	    	if(j == numbers_arr.length)
	    		to_print += numbers_arr[j];
	    	else
	    		to_print += numbers_arr[j]+" ";
	    }

	    console.log(to_print);
        
    }
});
