var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
		line=line.replace(/ /g,"");
        gray_list=line.split("|");
		answer_list=[];
		for(i=0;i<gray_list.length;i++){
			answer=gray_list[i][0];
			for (j=1;j<gray_list[i].length;j++){
				answer=answer+(answer[j-1] ^ gray_list[i][j]);
			}
			answer_list.push(parseInt(answer,2).toString(10));
		}
		console.log(answer_list.join(" | "));
    }
});
