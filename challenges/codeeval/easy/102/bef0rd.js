function contar(l) {
    var objeto = JSON.parse(l);
    //console.log(objeto);
    var sum = 0;
    objeto.menu.items.forEach(function(x) {
       // console.log(x);
        if (x !== null && "label" in x){
            sum = sum + (x.id);            
        }

    })
    console.log(sum)
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      contar(line.trim());
    }
});
