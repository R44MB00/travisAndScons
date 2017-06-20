var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n')
                            .forEach(function(line) {

  var dicc = ['Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
              'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
              'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Z'];

  var ans = '';
  var n = parseInt(line);

  if (n > 702) {
    ans += dicc[parseInt((n - 703) / 676) + 1];
    m = (n - 703) % 676;
    ans += dicc[parseInt(m / 26) + 1];
  }

  if ((n > 26) && (n <= 702)) {
    ans += dicc[parseInt((n - 27) / 26) + 1];
  }
  ans += dicc[parseInt(n % 26)];
  console.log(ans);
});
