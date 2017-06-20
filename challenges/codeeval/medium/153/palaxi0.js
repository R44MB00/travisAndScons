var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        var test = line.trim();
        var doors = parseInt(test.split(" ")[0]);
        var iterations = parseInt(test.split(" ")[1]);
        var doorsvec = new Array(doors).fill(0);
        var total = 0;

        for (i = 0; i< iterations - 1; i++) {
        	for (i = 1; i < doorsvec.length;i+=2){
        		doorsvec[i] = 1;
        	}
        	for (i = 2; i < doorsvec.length; i= i+3){
        		if (doorsvec[i] === 0){
        			doorsvec[i] = 1;
        		}else{
        			doorsvec[i] = 0;
        		}
        	}
        }
        	if (doorsvec[doorsvec.length - 1] === 0){
        		doorsvec[doorsvec.length - 1] = 1 ;
        	}else{
        		doorsvec[doorsvec.length - 1] = 0 ;
        	}
        
        for (i=0;i<doorsvec.length;i++){
        	if (doorsvec[i] === 0){
        		total+=1;
        	}
        }
        console.log(total);
    }
});