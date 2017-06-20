var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
		line=line.replace("\n","");
		s_d=unescape(line);
		s_d=s_d.replace(/\:80/g,"");
		s_d=s_d.toLowerCase();
		s_l=s_d.split(";");
		if(s_l[0]==s_l[1]){
			console.log("True");
		}
		else{
			console.log("False");	
		}
    }
});
