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
    Dada un formulario de login
    Entonces miro el codigo fuente de la pagina
	Y en el codigo javascript encuentro el user y el password
	Y el reto es solucionado.
