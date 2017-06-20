# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría basic
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada un archivo de texto b1.txt
	Entonces lo descargo y lo abro en un editor de texto
    Entonces noto que es ilegible
	Pero tiene una marca al principio del archivo
	Y corresponde a .bmp
	Entonces le cambio la extensión
	Y puedo leer el mensaje
	Y el user es: paint y el pass es: rules
	Y el reto es solucionado.
