/*
Title:Rightmost Char
CodeEval:Easy
url:https://www.codeeval.com/open_challenges/31/
*/

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      r = line.split(",")[1];
      pos = 0;
      name = line.split(",")[0];
      for (i = 0; i < name.length; i++) {
        if (name[i] == r){
             pos = i;
          //console.log(i);

     }
    }
    if (pos == 0) {
      console.log(-1);
    }
    else {
      console.log(pos);
      }
  }
})
