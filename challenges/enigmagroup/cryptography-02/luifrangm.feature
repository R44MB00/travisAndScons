# language: es

Característica: descifrar el mensaje
  Del sitio enigmagroup
  De la categoría cryptography
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio enigmagroup
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://www.asciitohex.com/
	
  Escenario: Solución exitosa
    Dada un texto cifrado
    Entonces voy al sitio web
	Y lo descifro el texto en Base64
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
