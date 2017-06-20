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
    Entonces leo el codigo fuente de la pagina
	Y encuentro un nombre de archivo
	Entonces lo escribo en la barra de direcciones
	Y puedo leer el password lo escribo en el cuadro de texto
	Y hago click en el boton submit
	Y el reto es solucionado.
