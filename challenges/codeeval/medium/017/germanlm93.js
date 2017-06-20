function formatAll(str){
	vect = str.substr(0,str.length-1).split("|");
	for(var i = 0;i < vect.length;i++){
		auxStr = vect[i];
		vect[i] = auxStr.substr(0,auxStr.length-1);
	}
	return vect;
}
function contains(str, l) {
    return (str.indexOf(l) == -1)?false:true;
}
// n = letters, r = cant, res = string
function combination(vect,res,n,r){
   if(n == 0){
      x = x + res +"|";
   }else{
      for(var i = 0; i < r; i++){
          if(contains(res,vect[i]) === false){
                combination(vect,res + vect[i] + ":", n-1,r);
          }
      }
   }
}
function getSum(vect){
	var c = 0;
	var sum = 0;
	var str = "";
	for(var i = 0;i < vect.length;i++){
		auxVect = vect[i].split(":");
		sum = 0;
		for(var j = 0;j < auxVect.length;j++){
			sum = sum + parseInt(auxVect[j]);
		}
        console.log(vect[i]+"--"+sum);
		if(sum == 0){
			c++;
		}

	}
	return c;
}

funcion cleanVect(vect){
	var x = 0;
	while(true){
		if(x >= vect.length-1){
			break;
		}else{
			subVect = vect[x].split(":").sort();
			othVect = vect[x+1].split(":").sort();
			if(subVect == othVect){
				 vect.splice(x+1,1);
			}
		}
		x++;
	}
	return vect;
}

line = "2,3,1,0,-4,-1";
x = "";
v = line.split(",");
combination(v,"",4,v.length);
v = formatAll(x);
v = cleanVect(v);
console.log(getSum(v));
