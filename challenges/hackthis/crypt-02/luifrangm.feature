# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría crypto
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://planetcalc.com/1434/
 
  Escenario: Solución exitosa
    Dada una frase cifrada
    Entonces voy a la calculadora caesar online
	Y decifro el texto
	Entonces puedo leer el mensaje
	Y el pass es: shiftthatletter
	Y el reto es solucionado.
