var t = []; //Alamacenamiento de los datos
var resultado = []; //Array de resultado
for (var i=0; 16>i; i++){
	t[i] = input().split(' '); //Recoleccion de los datos
}
for(var i=1; t.length > i; i++){
	resultado[i-1]=  parseInt(t[i][1]) + parseInt(t[i][0]); //Suma de datos
	output(resultado[i-1]+" ");//Respuesta de datos
}
