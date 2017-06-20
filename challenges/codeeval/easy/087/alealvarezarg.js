
matriz = new Array(256);

count = 0;
while(count<256){
    matriz[count] = new Array(256);
    count2 = 0;
    while(count2<256){
        matriz[count][count2] = 0;
        count2 = count2 + 1;
    }
    count = count + 1;
}

var fs  = require("fs");

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        
        line = line.split(' ');

        if(line[0] == "SetCol"){
            count = 0;
            while(count<256){
                matriz[count][parseInt(line[1])] = parseInt(line[2]);
                count = count + 1;
            }
        }else if(line[0] == "SetRow"){
            count = 0;
            while(count<256){
                matriz[parseInt(line[1])][count] = parseInt(line[2]);
                count = count + 1;
            }
        }else if(line[0] == "QueryRow"){
            count = 0;
            sum = 0;
            while(count<256){
                sum = sum + matriz[parseInt(line[1])][count];
                count = count + 1;
            }
            console.log(sum);
        }else if(line[0] == "QueryCol"){
            count = 0;
            sum = 0;
            while(count<256){
                sum = sum + matriz[count][parseInt(line[1])];
                count = count + 1;
            }
            console.log(sum);
        }
    }
});
