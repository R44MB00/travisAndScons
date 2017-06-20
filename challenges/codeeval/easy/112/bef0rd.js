String.prototype.replaceAt=function(index, character) {
    return this.substr(0, index) + character + this.substr(index+character.length);
}

function eso(n) {
        var w = n[0].split(" ");
        var c = n[1].split(", ");
        c.forEach(function(x) {
            var s = x.split("-");
            var tmp = w[s[0]];
            w[s[0]] = w[s[1]];
            w[s[1]] = tmp;
        })
        var output = "";
        w.forEach(function(x) {
            output += x+" ";
        });
        console.log(output.trim());
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      eso(line.trim().split(" : "));
    }
});
