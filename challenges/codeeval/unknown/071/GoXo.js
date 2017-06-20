var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
	if (line!=""){
	
		var parts = line.split(";");
		var range = parseInt(parts[1]);
		var nums = parts[0].split(",");
		var copy = nums.slice();
		var iter = parseInt(nums.length/range);
		var res = [];
		
		for (i = 1; i <= iter;i++){

			for (r = i*range -1; r >= (i-1)*range; r--){
				
				res.push(nums[r]);
			}

			copy.splice(0,range);
		}

		res.push.apply(res,copy)
		console.log(res.join(','));
	}
});