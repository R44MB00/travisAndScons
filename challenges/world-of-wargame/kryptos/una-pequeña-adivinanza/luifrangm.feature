# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco http://string-functions.com/reverse.aspx
	
  Escenario: Solución exitosa
    Dado una pagina web
	Y en ella una imagen
	Entonces la descargo
	Y la edito con un editor de texto
    Y encuentro el texto al reves
	Entonces lo volteo en la pagina web 
	Y encuentro una adivinanza que resuelvo
	Y el reto es solucionado.
