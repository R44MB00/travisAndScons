var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
            array_test=line.split("|");
            trump_card=array_test[1].trim();
            array_card=array_test[0].trim().split(" ");
            if (array_card[0].length==3){
                ca=array_card[0].substring(0,2);
                sa=array_card[0][2];
            }
            else{
                ca=array_card[0][0];
                sa=array_card[0][1];
            }
            if (array_card[1].length==3){
                cb=array_card[1].substring(0,2);
                sb=array_card[1][2];
            }
            else{
                cb=array_card[1][0];
                sb=array_card[1][1];
            }
            //Comparaciones
            if(ca==cb){
                 console.log(array_test[0]);
            }
            else if (trump_card==sa){
                console.log(ca+sa);
            }
            else if (trump_card==sb){
                console.log(cb+sb);
            }
            else if (ca>cb){
                console.log(ca+sa);
            }
            else if (cb>ca){
                console.log(cb+sb);
            }
    }
});
