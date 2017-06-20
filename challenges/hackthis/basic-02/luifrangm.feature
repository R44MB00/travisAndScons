# language: es

Característica: descifrar el mensaje
  Del sitio hackthis
  De la categoría basic
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio hackthis
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	Y tengo la extensión TamperData

  Escenario: Solución exitosa
    Dada una pagina web y un boton sumit
	Entonces abro la extensión TamperData
    Y capturo la petición cambiando los valores
	Y el reto es solucionado.
