// Warn if overriding existing method
if(Array.prototype.equals)
    console.warn("Overriding existing Array.prototype.equals. Possible causes: New API defines the method, there's a framework conflict or you've got double inclusions in your code.");
// attach the .equals method to Array's prototype to call it on any array
Array.prototype.equals = function (array) {
    // if the other array is a falsy value, return
    if (!array)
        return false;

    // compare lengths - can save a lot of time 
    if (this.length != array.length)
        return false;

    for (var i = 0, l=this.length; i < l; i++) {
        // Check if we have nested arrays
        if (this[i] instanceof Array && array[i] instanceof Array) {
            // recurse into the nested arrays
            if (!this[i].equals(array[i]))
                return false;       
        }           
        else if (this[i] != array[i]) { 
            // Warning - two different object instances will never be equal: {x:20} != {x:20}
            return false;   
        }           
    }       
    return true;
}
// Hide method from for-in loops
Object.defineProperty(Array.prototype, "equals", {enumerable: false});

function sacarConjunto(l) 
{
 var conjunto = [];
    l.split("").forEach(function(l) {
        if (l != "0") {
            conjunto.push(l);
            
        }
    });
  return (conjunto.sort());
}

function generar(conjunto, hasta) {
    var c = [];
    if (conjunto.length==1) {
        return hasta*10;
    }
   
    for (var i = hasta+1;true;i++){
        if (sacarConjunto(i.toString()).equals(conjunto))  {
            return i;
        }
    }
}

function siguiente(l) {
    conjunto =  sacarConjunto(l);
    return generar(conjunto, parseInt(l));
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      console.log(siguiente(line.trim()));
    }
});
