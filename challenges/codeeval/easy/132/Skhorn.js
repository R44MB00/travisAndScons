var fs  = require("fs");
var array = [];

fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        array = line.split(',');
        //console.log(array);
        var dict = {};
        for(var i = 0; i < array.length; i++)
        {
            if(array[i] in dict)
            {
                //console.log("vs");
                dict[array[i]] += 1;
            }
            else
            {
                //console.log("asf");
                dict[array[i]] = 1;
            }
            
        }
        var flag = 0;
        //console.log(dict);
        for (var key in dict) {
            var value = dict[key];
            //console.log(value+"value");
            //console.log(Math.round(array.length/2)+"length");
            if(value+1 == (Math.round(array.length/2)) || value-1 == Math.round((array.length/2)) || value == Math.round((array.length/2)))
            {
                flag = 1;
                console.log(key);    
            }
        }
        if (flag == 0) {console.log("None");}
    }
});