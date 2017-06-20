# language: es

Característica: basic
  Del sitio hackthissite
  De la categoría basic
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthissite
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	
  Escenario: Solución exitosa
    Dado un formulario de login
    Entonces veo un boton para cifrar
	Entonces escribo mi nombre y analizo el resultado
	Entonces veo que van aumentando el 1 la posicion del ascii
	Y puedo desencriptar el texto cifrado
	Y el reto es solucionado.
