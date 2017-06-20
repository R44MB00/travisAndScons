function rep(x,a,b,v){
	for (var j = 0; j < v.length; j++){
		x[a] = v[j];
		a++;
	}
	return x;
}

function copy(x){
	var auxV = [];
	for(var i = 0; i < x.length; i++){
		auxV[i] = x[i];
	}
	return auxV;
}

line = "1,2,3,4,5;2";
list = (line.split(";")[0]).split(",");
laux = (line.split(";")[0]).split(",");
numb = parseInt(line.split(";")[1]);
last = (list.length - (list.length % numb)) - 1;
if(numb != 1){
	for (i = 0; i < last; i=i+numb){
		laux = copy(list);
		list = rep(list,i,i+numb,laux.splice(i,i+numb).reverse());
	}
}
console.log(list.join(","));
vect = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p".split(",");
x = "";
// n = letters, r = cant, res = string
function combination(res,n,r){
   if(n == 0){
      x += res+",";
   }else{
      for(var i = 0; i < r; i++){
          if(res.indexOf(vect[i]) < 0){
                combination(vect[i] +":", n-1,r);
          }
      }
   }
}
combination('',5,5);
console.log(x);
