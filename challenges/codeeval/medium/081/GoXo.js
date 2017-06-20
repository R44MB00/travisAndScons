var array = [];

var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
  forEach(function(line) {
    if (line !== '') {
      var parts = line.split(',').map(Number);
      var ini = new Array(4);
      var ct = 0;
      combine(parts, ini, 0, 0, 4);

      for (var i = 0; i < array.length; i++) {
        if (array[i].reduce(add, 0) === 0) {
          ct += 1;
        }
      }
      array = [];
      console.log(ct);
    }
});

function add(a, b) { return a + b; }

function combine(curr, data, start, idx, r) {

  if (idx == r) {
      array.push(data.slice());
    return;
  }

  for (var i = start; i < curr.length; i++) {
    data[idx] = curr[i];
    combine(curr, data, i + 1, idx + 1, r);
  }
}
