var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
  forEach(function(line) {
    var parts = line.split(' ');
    var n = parseInt(parts[0]);

    if (isJolly(parts, n)) console.log('Jolly');
    else console.log('Not jolly');

  function isJolly(parts, n) {
    var dif = [];
    var curr = 0;
    if (parts.length <= 2) {
      if (parseInt(parts[1]) == n - 1) return true;
      else return false;
    }

    for (var i = 1; i < parts.length - 1; i++) {
      curr = Math.abs(parseInt(parts[i]) - parseInt(parts[i + 1]));
      if (dif.indexOf(curr) < 0) dif.push(curr);
      else return false;
    }

    return checkDif(dif.sort(sortNumber), n);

  }

  function checkDif(dif, n) {

    if (parseInt(dif[dif.length - 1]) != n - 1) return false;

    for (var i = 0; i < dif.length - 1; i++) {
      if (dif[i + 1] - dif[i] != 1) return false;
    }

    return true;
  }

  function sortNumber(a, b) {
    return a - b;
  }
});
