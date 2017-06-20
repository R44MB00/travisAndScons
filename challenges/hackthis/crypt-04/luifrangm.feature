# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría crypto
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	 
  Escenario: Solución exitosa
    Dada una frase cifrada 
    Entonces busco en el texto posibles conicidencias
	Y encuentro evidentes palabras como THE THIS 
	Entonces empiezo a reeemplazar y deducir el alfabeto
	Entonces puedo leer el mensaje
	Y el pass es: ihavefriends
	Y el reto es solucionado.
