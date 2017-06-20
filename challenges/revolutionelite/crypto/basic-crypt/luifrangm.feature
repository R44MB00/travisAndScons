# language: es

Característica: descifrar el mensaje
  Del sitio revolution elite
  De la categoría cryptography
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio revolution elite
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://sha1.gromweb.com/
	Y conozco el sitio http://md5.gromweb.com/
	Y conozco el sitio http://www.asciitohex.com/
	Y conozco el sitio http://morsecode.scphillips.com/translator.html
	Y conozco el sitio http://planetcalc.com/1434/
	
  Escenario: Solución exitosa
    Dada un texto cifrado en varios formatos
	Entonces voy a los diferentes sitios web
	Y lo descifro los hash SHA1 y MD5
	Y el decimal y el binario y el hexa
	Y decifro el morse y el cesar
	Entonces lo concateno y es un hash que descifro
	Y la clave es cipher
	Y el reto es solucionado.
