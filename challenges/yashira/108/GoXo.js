var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
  forEach(function(line) {
    if (line !== '') {
      var val = Encode(line);
      if ((val[0] == 35081) && (val[1] == 36551900)) {
        console.log('GREAT! the val:' + line);
      }
    }
});


function Encode(str) {
  x = eval(str); // jshint ignore:line
  d = 1;

  for (i = 0; i < str.length; i++) {
    a = (x - 100) ^ x - (x - 50) ^ (x - 1);
    b = (x - 30) ^ (x - 2);
    c = a - b;
    d = eval(str.charAt(i)) * // jshint ignore:line
        eval(str.substring(i, i + 2)) * d + d; // jshint ignore:line
    x = c * ((a - a % b) / b + 1) + a + b;
  }
  return [x, d];
}
