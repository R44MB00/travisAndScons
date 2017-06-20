
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        stringe = line.trim()
        word1 = stringe.split(" | ")[0]
        word2 = stringe.split(" | ")[1]
        bugs = 0
        for (i=0 ; i< word1.length; i++){
            if (word1[i] != word2[i])
                bugs+=1;
        }
        if (bugs === 0)
        console.log("Done");
        else if (bugs <= 2) 
        console.log("Low");
        else if (bugs <= 4)
        console.log( "Medium");
        else if (bugs <= 6)
        console.log("High")
        else if (bugs > 6)
        console.log("Critical");
    }
});