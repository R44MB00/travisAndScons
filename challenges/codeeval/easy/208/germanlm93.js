function check(line){
    vect = line.split(" | ");
    for(i=0;i<vect.length;i++){
        vect[i] = vect[i].split(" ");
    }
    aux = [];
    for(i=0;i<vect[0].length;i++){
        max = 0;
        for(j=0;j<vect.length;j++){
            numer = parseInt(vect[j][i]);
            if(j === 0){
                max = numer;
            }else{
                context = parseInt(vect[j][i]);
                if(context > max){
                    max = context;
                }
            }
        }
        aux[i] = max;
        str = "";
		for(i=0;i<aux.length;i++){
			str = str +aux[i]+" ";
		}
		console.log(str.substr(0,str.length-1));
    }
}
