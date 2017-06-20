# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://md5.gromweb.com/
 
  Escenario: Solución exitosa
    Dado un hash
    Entonces uso un conversor hash - texto online
	Y arroja el mensaje en texto con la respuesta
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
