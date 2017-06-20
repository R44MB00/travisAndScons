# language: es

Característica: buscar el password
  Del sitio thisislegal
  De la categoría cryptoanalisys
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	
  Escenario: Solución exitosa
    Dada una pagina web que pide un password
    Entonces miro el codigo fuente de la pagina
	Y en comentarios esta la pasword
	Y el reto es solucionado.
