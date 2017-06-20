function reverseString(s) {
    s = s.toString();
    return parseInt(s.split("").reverse().join(""));
}

function isPalindrome(n) {
    return n == reverseString(n);
}
function palindromo(n) {
        var i = 0;
        var p = n;
		while(!isPalindrome(p)) {
			p = parseInt(p) + reverseString(p);            
            i++;
		}
		return i + " " + p;
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        console.log(palindromo(line.trim()));
    }
});
