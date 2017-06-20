var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
	check=0;
	for (position=0;position<line.length;position++){
		quantity=line[position];
		check_position=0;
		for(i=0;i<line.length;i++){
			if (position==parseInt(line[i])) {
				check_position+=1;
			}
		}
		if (check_position==parseInt(quantity)){
			check+=1;
		}
	}
	if (check==line.length){
		console.log(1);
	}
	else{
		console.log(0);
	}
	 	
    }
});
