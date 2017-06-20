var s = input().split(' '); //Obtengo el primer numero
var t = input().split(' '); //Obtengo el array de numeros a sumar
var resultado = 0; //Variable de almacenamiento de numeros
for(var i = 0; t.length > i; i++){
	resultado += parseInt(t[i]); //Recorro la variable t y sumo los numeros en ella
}
output(resultado); //Muestro el resultado
