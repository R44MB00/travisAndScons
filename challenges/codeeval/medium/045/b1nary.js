var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
    	function reverse(s) {
    		var o = '';
    		for (var i = s.length - 1; i >= 0; i--)
    			o += s[i];
    		return o;
    	}
    	function isPalindrom(numb){
    		digits = numb.split('');
    		while(digits.length > 0){
    			if (digits.length == 1)
    				return true;
    			else{
    				first = digits.shift();
    				last = digits.pop();
    				if (first != last){
    					return false;
    				}
    			}
    		}
    		return true;
    	}
    	count = 0;
    	number = line.toString();
    	while (!isPalindrom(number)){
    		reversed = reverse(number);
    		number = parseInt(number) + parseInt(reversed);
    		number = number.toString();
    		count++;
    	}
    	answer_line = count.toString() + " " + number;
    	console.log(answer_line);
    }
});
