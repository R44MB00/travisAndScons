
var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
//fs.readFileSync('test.txt').toString().split("\n").forEach(function(line) {
	if (line != "") {
		var dest = [];
		var r = [];
		line.split(";").forEach(function(e) {
			if (e != "") {
				var destination = e.trim().split(",");
				dest.push(parseInt(destination[1]));
			}
		});
		dest.sort(function(a, b) {
			return a - b;
		});
		r.push(dest[0]);
		for (var i = 1; i < dest.length; i++) {
			r.push(dest[i] - dest[i - 1]);
		}

		console.log(r.join(","));
	}
    
});

