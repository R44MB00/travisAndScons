line = "48 51 5 61 18 | 2";
vect = line.split(" | ")[0];
iter = line.split(" | ")[1];
vect = vect.split(" ");
if(parseInt(iter) > vect.length){
	iter = vect.length;
}
//BUBBLE
for(var j = 0; j < parseInt(iter);j++){
    for(var i = 0; i < vect.length-1; i++){
        if(parseInt(vect[i]) > parseInt(vect[i+1])){
            aux = vect[i];
            vect[i] = vect[i+1];
            vect[i+1] = aux;
        }
    }
}
console.log(vect.join(" "));
