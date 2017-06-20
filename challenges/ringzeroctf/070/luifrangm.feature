# language: es

Característica: Obtener la bandera
  Del sitio Ringzer0team.com
  De la categoría Steganography
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio https://ringzer0team.com/
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
    
  Escenario: Solución exitosa
    Dado una pagina web
	Entonces se encuentra un texto de 8 estrofas
	Y evidentemente es un acrostico
	Entonces se toma la primera letra de cada frase
	Y se obtiene la bandera
	Y es: FLAGCMPHDDSQNUCCPNNSOQACJOOP
	Entonces el reto es solucionado.
	