# language: es

Característica: descifrar el mensaje
  Del sitio challengeland
  De la categoría cryptography
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio challengeland
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio HashDecryption.com
	Y conozco el sitio http://md5.gromweb.com/
	
  Escenario: Solución exitosa
    Dada un texto cifrado
    Entonces voy al sitio web numero 1
	Y lo descifro el hash SHA1 a MD5
	Y voy al sitio web numero 2
	Y decifro el MD5
	Entonces puedo leer el mensaje
	Y la clave es cool
	Y el reto es solucionado.
