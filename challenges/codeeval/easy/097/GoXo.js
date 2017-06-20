var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
    	if (line.length > 0){
    		var parts = line.split("|");
    		var codex = parts[1].split(" ");
    		var writer = "";
			for (i = 1; i < codex.length; i++){
				var index = parseInt(codex[i]);		
				writer += parts[0].charAt(index-1)
		}
        process.stdout.write(writer);
        process.stdout.write("\n");
    	}
    }
});