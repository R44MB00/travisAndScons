function mayor(d1, d2){
	date1 = d1.split(":");
	date2 = d2.split(":");
	h1 = parseInt(date1[0]); h2 = parseInt(date2[0]);
	m1 = parseInt(date1[1]); m2 = parseInt(date2[1]);
	s1 = parseInt(date1[2]); s2 = parseInt(date2[2]);
	if(h1 >= h2){
		if(h1 == h2){
			if(m1 >= m2){
				if(m1 == m2){
					if(s1 >= s2){
						return true;
					}else{
						return false;
					}
				}else{
					return true;
				}
			}else{
				return false;
			}
		}else{
			return true;
		}
	}else{
		return false;
	}
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (hour) {
    if (hour != "") {
        var vect = hour.split(" ");
        for (var i = 0;i < vect.length-1 ;i++){
        	for (var j = i + 1 ; j < vect.length; j++){
        		if(mayor(vect[i],vect[j]) == false){
        			var aux = vect[i];
        			vect[i] = vect[j];
        			vect[j] = aux;
        		}
        	}
}       console.log(vect.join(" "));
    }
});
