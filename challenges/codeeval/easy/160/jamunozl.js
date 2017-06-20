
var fs  = require("fs");
fs.readFileSync("test.txt").toString().split('\n').forEach(function (line) {
    if (line != "") {
    	numberInteger = parseInt(line); //convierte a entero
        numberFloat =parseFloat(line); // convienrte a float
        d = parseInt((numberFloat - numberInteger)* 60);
        d= ("0" + d).slice(-2); // me muestra dos digitos
        s = parseInt((numberFloat - numberInteger - (d/60))*3600);
        s= ("0" + s).slice(-2);
        result = numberInteger + "."+ d+"'"+s+"\"";
        console.log( result);
    }
});
