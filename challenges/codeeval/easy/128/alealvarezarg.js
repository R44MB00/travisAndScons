
var fs  = require("fs");

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        
        line = line.split(' ');
        
        suma = 1;
        string = "";
        
        for(i=0;i<line.length;i++){
            if(line[i] == line[i + 1]){
                suma = suma + 1;
            }else{
                string = string.concat(suma," ",line[i]," ");
                suma = 1;
            }
        }
        console.log(string.trim());
    }
});
