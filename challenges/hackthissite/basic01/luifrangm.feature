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
    Entonces en el codigo fuente dela pagina encuentro el pass
	Y hago click en el boton submit
	Y el reto es solucionado.
