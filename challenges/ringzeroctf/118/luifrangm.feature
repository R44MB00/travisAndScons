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
	Entonces se descarga un archivo de imagen
	Y se abre con un editor de imagenes
	Y se hace zoom y se revisa cuidadosamente
	Entonces se encuentra la bandera
	Y es: flaghsdf83ksk22
	Entonces el reto es solucionado.
	