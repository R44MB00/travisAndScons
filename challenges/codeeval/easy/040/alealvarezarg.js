
var fs  = require("fs");

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        
        position = new Array(10);
        
        count = 0;
        while(count < 10){
            position[count] = 0;
            count = count + 1;
        }
        
        count = 0;
        while(count < line.length){
            position[parseInt(line[count])] = position[parseInt(line[count])] + 1;
            count = count + 1;
        }
        
        count = 0;
        findit = true;
        while(count<line.length){
            if(parseInt(line[count]) !== position[count]){
                findit = false;
            }
            count = count + 1;
        }
        
        if(findit === true){
            console.log(1);
        }else{
            console.log(0);
        }
    }
});
