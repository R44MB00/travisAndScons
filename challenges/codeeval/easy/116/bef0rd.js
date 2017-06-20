var alphabet = ["-----", ".----", "..---", "...--", "....-", ".....", "-....", "--...", "---..", "----.", "*", "*", "*", "*", "*", "*", "*", ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."];

function morseletter(m) {
     return (String.fromCharCode(alphabet.indexOf(m)+48))
}

function morseword(w) {
    var out = "";
    w.split(" ").forEach(function(l) {
        out += morseletter(l);
    })
    return out;
}

function morsesentence(s) {
    var out = "";
    s.split("  ").forEach(function(p) {
        out += morseword(p) + " ";
    })
    return out.trim();
}


var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      console.log(morsesentence(line));
    }
});
