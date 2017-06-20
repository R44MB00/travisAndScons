String.prototype.replaceAt=function(index, character) {
    return this.substr(0, index) + character + this.substr(index+character.length);
}

function eso(n) {
    var s = n.split();
    s.forEach(function(x) {
        var upper = true;       
        var out= "";
        for (index in x.split('')){
           // console.log("x[index].toUpperCase()", x[index].toUpperCase());

            if (x[index].toUpperCase() >= "A" && x[index].toUpperCase() <= "Z") {
                
                if (upper)
                    out = out + (x[index]).toUpperCase();
                else 
                    out = out + (x[index]).toLowerCase();
                
                upper = !upper;
            } else {
                out = out + x[index];
            }
        }
        console.log(out);
        
       
    })
        
        //console.log(output.trim());
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      eso(line.trim());
    }
});
