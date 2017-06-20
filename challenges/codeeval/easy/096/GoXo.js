var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
        var char = line.split('');
        for (i = 0; i < char.length ; i++){
            if (char[i] == char[i].toUpperCase()) {
                char[i] = char[i].toLowerCase();
            }else{
                char[i] = char[i].toUpperCase()
            }
            process.stdout.write(char[i]);
        }
        process.stdout.write("\n");
    }
});
