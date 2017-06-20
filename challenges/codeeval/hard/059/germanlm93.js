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

//informacion
var list = [];
list[0] = "0";
list[1] = "1";
list[2] = "abc";
list[3] = "def";
list[4] = "ghi";
list[5] = "jkl";
list[6] = "mno";
list[7] = "pqrs";
list[8] = "tuv";
list[9] = "wxyz";
//parametros
line = "4155230".split("");
//Reemplazar numeros
var array = [];
for(var i=0;i<line.length;i++){ 
	array[i] = list[parseInt(line[i])];
}
//Restricciones
var max = line.length;
var resultados = "";
var i = 0;
function iter(resultados,arr,i,max){
	if(i < max){
		return resultados + ",";
	}else{
		for(var j=0; j < arr[i].length; j++){
			resultados += arr[j] + ","; 
		}
	}
}
