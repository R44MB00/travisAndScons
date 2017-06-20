var fs = require('fs');
fs.readFileSync(process.argv[2]).toString().split('\n').
  forEach(function(line) {
    if (line !== '') {

      var teams = {};
      var cities = line.split(' | ');

      for (var i = 0; i < cities.length; i++) {
        var eachTeam = cities[i].split(' ');
        for (var j = 0; j < eachTeam.length; j++) {
          if (eachTeam[j] in teams) {
            teams[eachTeam[j]] += (i + 1).toString() + ',';
          } else {
            teams[eachTeam[j]] = (i + 1).toString() + ',';
          }
        }
      }
      for (var team in teams) {
        var cityToPrint = teams[team];
        process.stdout.write(team + ':' +
               cityToPrint.substring(0, cityToPrint.length - 1) + ';' + ' ');
      }
      process.stdout.write('\n');
    }
});
