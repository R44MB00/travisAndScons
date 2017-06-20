var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
    	var col = parseInt(line);
    	var res = "1";
    	for (j = 1; j < col; j++) res += " "+pascal(j).join(' ');
    console.log(res);
    }	
});

function pascal(n){
	var row = [1];
	for (i = 0; i < n; i++){
		row.push(row[i]*(n-i)/(i+1));
	}
	return row;
}