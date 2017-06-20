# language: es

Característica: descifrar el mensaje
  Del sitio challengeland
  De la categoría cryptography
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio challengeland
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://www.asciitohex.com/
	Y conozco el sitio http://planetcalc.com/1434/
	
  Escenario: Solución exitosa
    Dada un texto cifrado
    Entonces voy al sitio web numero 1
	Y lo descifro el base654 a texto
	Y voy al sitio web numero 2
	Y decifro el texto con cifrado cesar
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
