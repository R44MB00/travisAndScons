# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría sqli
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	
  Escenario: Solución exitosa
    Dada una pagina web
    Y un formulario de login
	Entonces inyecto la instruccion sql '1 or '1' = '1
	Y puedo logearme
	Y el reto es solucionado.
