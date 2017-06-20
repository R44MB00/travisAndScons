# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
 
  Escenario: Solución exitosa
    Dada una imagen con un texto al revés
    Y la instrucción de usar un espejo
    Entonces capturo la pantalla
	Y con un editor de imagenes la volteo horizontalmente
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
