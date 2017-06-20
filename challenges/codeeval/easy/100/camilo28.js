/*
Title: Even number
CodeEval: Easy
url: https://www.codeeval.com/open_challenges/100
*/
var fs  = require("fs");
//pritn 1 when number is even
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      if(parseInt(line) % 2 == 0){
        console.log(1);
        }
        else console.log(0);
        //console.log(answer_line);
    }
});
