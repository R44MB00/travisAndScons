var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
           forEach(function(line) {

    var parts = line.split(';');
    var suma = parseInt(parts[1]);
    var nums = parts[0].split(',');
    var ans = [];

    for (var n = 0; n < nums.length; n++) {
        for (var i = n + 1; i < nums.length; i++) {

            if ((parseInt(nums[n]) + parseInt(nums[i])) == suma) {
                ans.push(nums[n] + ',' + nums[i]);
            }
        }
    }
    if (ans.length > 0) console.log(ans.join(';'));
    else console.log('NULL');
});
