# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio https://es.wikipedia.org/
 
  Escenario: Solución exitosa
    Dada una imagen con caracteres en braille
    Entonces consulto el alfabeto en wikipedia
	Y al reemplazar los valores por las letras
	Entonces puedo leer el mensaje
	Y el reto es solucionado.
