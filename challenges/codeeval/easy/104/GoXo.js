var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        var dic = ["zero","one","two","three","four","five","six","seven","eight","nine"];
        var word = line.split(";");
        for (i = 0; i < word.length ; i++){
            process.stdout.write(dic.indexOf(word[i]).toString());
        }
        process.stdout.write("\n");
    }
});
