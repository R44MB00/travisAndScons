# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría Steganos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
 
  Escenario: Solución exitosa
    Dada una imagen en la pagina la descargo
    Y la abro con un editor de texto
    Entonces busco la marca %PNG que indica imagen
	Y copio desde ese punto hasta el final del archivo
	Entonces guardo el archivo con extendion png
	Y puedo leer la respuesta
	Y el reto es solucionado.
