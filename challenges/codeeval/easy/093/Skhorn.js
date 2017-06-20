var fs  = require("fs");
var array = [];
var new_line = "";
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        array = line.split(' ');
        for(i = 0; i < array.length; i++)
        {
        	for(j = 0; j < array[i].length; j++)
        	{
        		if(j == 0)
        		{
        			new_line += array[i].charAt(0).toUpperCase();
        		}
        		else
        		{
        			new_line += array[i].charAt(j);
        		}
        		if(j == array[i].length-1)
        		{
        			new_line += " ";
        		}
        	}        	
        }
        console.log(new_line.substring(0, new_line.length-1));
        new_line = "";
        

    }
});