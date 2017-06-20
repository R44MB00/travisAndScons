var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
  
    if (line != "") {
  
    	var parts = line.split(',');
    	var len1 = parts[0].length;
    	var len2 = parts[1].length;
    	var ans = 1;

      	for (i = 0; i < len2; i++){

    		if (parts[1].charAt(len2 - 1 -i) != parts[0].charAt(len1 - 1 -i)){

    			ans = 0;
    			break;
    		}
		}
    	console.log(ans);
  }	
});