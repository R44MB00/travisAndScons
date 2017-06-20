var fs  = require("fs");
var array = [];

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        //console.log(line);
        var bin = (line>>>0).toString(2)
        console.log((bin.match(new RegExp("1", "g")) || []).length);
    }
});