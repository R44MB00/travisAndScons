var fs  = require("fs");
var array = [];
var new_line = "";
var upper = true;
var lower = true;
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        //array = line.split(/[\s,'.:]+/)
        //console.log(array);

        for(var i = 0; i < line.length; i++)
        {
            if(line[i] == ' ' || line[i] == ',' || line[i] == ':' || line[i] == '.')
            {
                new_line += line[i];
                continue;
            }
            else
            {
                if(upper)
                {   
                    new_line += line[i].toUpperCase();
                    //console.log(new_line);
                    upper = false;
                    lower = true;
                }
                else if(lower)
                {
                    new_line += line[i].toLowerCase();
                    //console.log(new_line);
                    upper = true;
                    lower = false;
                }
            }
        }
        console.log(new_line);
        new_line = "";
        upper = true;
        lower = true;
    }
});