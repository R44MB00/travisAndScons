
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        num = parseInt(line);
        console.log(num.toString(2));
    }
});
