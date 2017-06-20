var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
	if (line!=""){
       	var nums = line.split(" ")[0];
       	var operation = line.split(" ")[1];
       	var pattern = operation.replace(/[+-]+/,"");
       	var result = "";
       
       	for (i = 0;i <operation.length; i++ ){
  			
  			var char = operation.charAt(i);
  			var num = nums[pattern.indexOf(char)]
  			
  			if (pattern.includes(char))	result += num;
  			else result += operation[i];	

  			}

  		result = result.replace(/\b0(\d+)\b/g, '$1');
  		console.log(eval(result));	
    }
});