# language: es

Característica: descifrar el mensaje
  Del sitio rootme
  De la categoría cryptanalisys
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio rootme
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://www.asciitohex.com/
 
  Escenario: Solución exitosa
    Dada un texto cifrado
    Entonces voy al traductor hexa-string
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
