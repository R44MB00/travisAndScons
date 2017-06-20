var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        var array = line.split(' ');
        lenghtArray=array.length;
        var finalArray="";
        for (i = lenghtArray-1; i > 0; i--) {
            finalArray=finalArray.concat(array[i]) 
            finalArray=finalArray.concat(" ")
            //console.log(array[i]);
            if (i-1==0) {
                finalArray=finalArray.concat(array[i-1])
            } 
        }
    console.log(finalArray);   
    }
});
