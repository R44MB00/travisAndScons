function logic(line) {
    num = parseInt(line.split(" | ")[0]);
    word = line.split(" | ")[1];
    blocks = (line.split(" | ")[2]).split(" ");
    aux = [];
    for (j = 0; j < word.length; j++) {
        occu = "";
        x = word.charAt(j);
        i = 0;
        while (true) {
            if (i == blocks.length) {
                break;
            }
            if (blocks[i].indexOf(x) >= 0) {
                occu += i + ";"; //+ x + ";";
                var re = new RegExp(x, 'g');
                blocks[i] = blocks[i].replace(re, '');
                break;
            }
            i++;
        }
        if (occu === "") {
            aux.push("");
        } else {
            aux.push(occu.substring(0, occu.length - 1));
        }
    }
    state = "True";
    for (var w = 0; w < aux.length; w++) {
        if (aux[w] === "") {
            state = "False";
            break;
        }
    }
    if (state == "True") {
        for (w = 0; w < aux.length - 1; w++) {
            exit = false;
            for (var y = i + 1; y < aux.length; y++) {
                if (aux[w] == aux[y]) {
                    exit = true;
                }
            }
            if (exit === true) {
                state = "False";
                break;
            }
        }
    }
    console.log(state);
}
var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
       logic(line);
    }
});
