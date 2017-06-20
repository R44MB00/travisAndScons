function isPrime(num) {
    if (num != 2 && num % 2 === 0) return false;
    for (var x = 3; x <= Math.round(num/2); x += 2)
        if (num % x === 0)
            return false;
    return true;
}

function printn(n) {
        var str = "";
		for (i=2;i<n;i++) {
			if (isPrime(i))
				str  = str + (i+",")
		}
		return str.substring(0, str.length - 1);
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        console.log(printn(line));
    }
});
