var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
           forEach(function(line) {
  var sol = [0, 0];
  var count = 1;
  var num1 = parseInt(line);
  var num2 = reversed(num1);

  while (count <= 100) {
    var sum = num1 + num2;
    if (isPal(sum)) {
        sol[0] = count;
        sol[1] = sum;
        break;
    }
    count++;
    num1 = sum;
    num2 = reversed(sum);
  }
  console.log(sol.join(' '));
});
function isPal(num) {

    var pal = num.toString().split('');
    var len = pal.length;

    for (var i = 0; i < len / 2; i++) {
        if (pal[i] !== pal[len - 1 - i]) {
            return false;
        }
    }
    return true;
}

function reversed(num) {
    return parseInt(num.toString().split('').reverse().join(''));
}
