

function eso(n) {
    var pajar = n[0];
    var aguja = n[1];   
    if (aguja.indexOf("*") > -1) {
        if (aguja.indexOf("\\*") == -1) {
            // use regex
            //console.log("usar regex");
            aguja = aguja.replace("*", ".*");
            //console.log(aguja);
            var regexp = new RegExp(aguja);
            //console.log(regexp);
            //console.log(pajar.search(regexp));
            //console.log(pajar);
            if (pajar.search(aguja) > -1) {
                 console.log("true");
                 return;
            }
        }
    }
    
    if (pajar.indexOf(aguja)>-1) {
        console.log("true");
        return;
    } 
    
    console.log("false");    
    
   
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      eso(line.trim().split(","));
    }
});
