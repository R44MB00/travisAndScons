
var flag = 0;

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        
        if(parseInt(flag) === 0){
            flag = 1;
        }else{
            
            number = parseInt(line);
            limit = parseInt(Math.sqrt(number));

            suma = 0;
            for(i = 0; i < limit + 1; i++){
                num1 = i*i;
                num2 = parseInt(Math.sqrt(number - num1));
                num2 = num2*num2;
                tot = num1 + num2;
                if(num1 <= num2 & tot === number){
                    suma = suma + 1;
                }
            }

            console.log(suma);
            
        }
        
    }
});
