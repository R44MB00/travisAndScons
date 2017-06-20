var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
           forEach(function(line) {

    var bal = 0;
    var control = 's';
    var res = 'True';

    for (var i = 0; i < line.length; i++) {
         var ch = line[i];

         if ((ch == '(') || (ch == '{') || (ch == '[')) abriendo(ch);

         if ((ch == ')') || (ch == '}') || (ch == ']')) {
               if (cerrando(ch) == 'continue') continue;
               if (cerrando(ch) == 'break') break;
         }
    }

    if (bal !== 0) {
        res = 'False';
    }
    console.log(res);

    function abriendo(c) {
        control = c;
        bal += 1;
    }

    function cerrando(c) {

        bal -= 1;

         if (bal < 0) {
             res = 'False';
             return 'break';
         }

        if (control == 's') return 'continue';
        if (((c == ')') && (control != '(')) ||
            ((c == '}') && (control != '{')) ||
            ((c == ']') && (control != '['))) {

            res = 'False';
            return 'break';

        } else control = 's';

        return 'continue';
    }
});
