# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://www.asciitohex.com/
 
  Escenario: Solución exitosa
    Dada un grupo de numeros
    Entonces uso un conversor Decimal - Ascii online
	Y arroja el mensaje en texto con la respuesta
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
