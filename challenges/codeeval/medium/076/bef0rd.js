
function findRotation(d, y) {
    var x = []
    
    for (i=1;i<d.length;i++) {
       x.push( d.substring(i) + d.substring(0, i) )
    }
    
    if (x.indexOf(y) > -1) {
        console.log("True");
    } else {
        console.log("False")
    }
}

function rotacion(line) {
    var x = line.split(",");
    var w = "False";
    if (x[0].length == x[1].length) {
        
    
       // console.log(x[0]);
        findRotation(x[0],x[1]);
        //console.log(x[1]);
    }
    return w;
 
 
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        (rotacion((line.trim())));
    }
});
