var fs  = require("fs");
var array = [];
var temp = "";
var count = 0;
var true_concat = [];
var chars_concat = [];
var buff = false;
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {

        for(var i = 0; i < line.length; i++)
        {
        	temp += line[i]
        	if(i > 0)
        	{
        		if(temp[0] == line[i])
	        	{
	        		//true_concat.push(temp.substring(0, temp.length - 1));
	        		true_concat.push(temp.length - 1);
	        		break;
	        	}
	        	/*else
	        	{
	        		chars_concat.push(temp);	
	        	}*/	
        	}
        	/*else
        	{
        		chars_concat.push(temp);
        	}*/
        }



        if(typeof true_concat[0] === "undefined")
        	console.log(line.length);
        else
        	console.log(true_concat[0]);
        //console.log(chars_concat);
        //chars_concat = [];
        true_concat = [];
        temp = "";
        //console.log();
    }
});
