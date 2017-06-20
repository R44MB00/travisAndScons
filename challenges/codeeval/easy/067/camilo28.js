/*
Title: Hex to Dec
CodeEval: Easy
Url: https://www.codeeval.com/open_challenges/67/submit/
*/
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
       out = parseInt("0X"+line)
       console.log(out);
    }
})
