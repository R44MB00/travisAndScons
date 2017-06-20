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
    Dada una frase cifrada 
    Entonces busco en el texto posibles conicidencias
	Y encuentro evidentes palabras como PASS
	Pero debo voltear el texto
	Y lo hago en el sitio online
	Entonces empiezo a reeemplazar y deducir el alfabeto
	Entonces puedo leer el mensaje
	Y el pass es: TheMentor
	Y el reto es solucionado.
