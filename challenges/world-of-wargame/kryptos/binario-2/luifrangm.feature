# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio world of wargame
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y conozco el sitio http://www.traductorbinario.com/#binario/
 
  Escenario: Intento fallido
    Dado un grupo de numeros binarios
    Entonces uso un conversor binario - texto online
	Y arroja el mensaje en texto sin semantica
	Entonces el intento es fallido.
		
  Escenario: Solución exitosa
    Dado un grupo de numeros binarios
	Y los divido en grupos de 7
	Entonces les arego un cero a la izquierda
    Entonces uso un conversor binario - texto online
	Y arroja el mensaje de texto con la respuesta
	Y el reto es solucionado.
