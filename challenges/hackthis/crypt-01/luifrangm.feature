# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría crypto
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://string-functions.com/reverse.aspx
 
  Escenario: Solución exitosa
    Dada una frase alreves
    Entonces voy al traductor online
	Y volteo el texto
	Entonces puedo leer el mensaje
	Y el pass es: woocrypt
	Y el reto es solucionado.
