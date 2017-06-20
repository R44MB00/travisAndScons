function eso(n) {
        var str = n.split(",");
        var s1 = str[0];
        var s2 = str[1];
        if (s1.substring(s1.length - s2.length) == s2) {
            console.log("1")
        } else {
            
            console.log("0");
        }
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      eso(line.trim());
    }
});
