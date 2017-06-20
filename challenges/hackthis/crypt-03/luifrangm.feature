# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría crypto
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://morsecode.scphillips.com/translator.html
 
  Escenario: Solución exitosa
    Dada una frase en morse
    Entonces voy a la calculadora morse online
	Y decifro el texto
	Entonces puedo leer el mensaje
	Y el pass es: thankyousir
	Y el reto es solucionado.
