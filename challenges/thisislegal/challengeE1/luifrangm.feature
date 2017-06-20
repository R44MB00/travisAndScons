# language: es

Característica: descifrar los mensaje
  Del sitio thisislegal
  De la categoría cryptoanalisys
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://www.asciitohex.com/
	Y conozco el sitio http://planetcalc.com/1434/
 
  Escenario: Solución exitosa
    Dada 3 textos cifrados con diferentes tecnicas
    Entonces voy al traductor hexa-string
	Y traduzco el texto que esta en URL Encoded
	Y convierto el trozo que esta en binario a texto
	Entonces voy a la calculadora cesar
	Y traduzco el ultimo texto
	Entonces puedo leer los mensajes
	Y el reto es solucionado.
