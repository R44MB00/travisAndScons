# language: es

Característica: Obtener la bandera
  Del sitio Ringzer0team.com
  De la categoría Forensics
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio https://ringzer0team.com/
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
    
  Escenario: Solución exitosa
    Dado una pagina web
	Y un archivo 86b265d37d1fc10b721a2accae04a60d
	Entonces se descarga
	Y se abre con un editor de texto
	Entonces en su interior se encuentra la bandera
	Y es: FLAG-ggmgk05096
	Y el reto es solucionado.
	