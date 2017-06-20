# language: es

Característica: Obtener la bandera
  Del sitio wechall.net
  De la categoría MySQL
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio https://www.wechall.net/
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
    
  Escenario: Solución exitosa
    Dado una pagina web
	Entonces se encuentran 3 botones
	Y cada uno de ellos le suma un voto a un candidato
	Entonces se debe asignar 111 votos con SQLinjection
	Y hago un voto para ver lo que resulta en la barra de direcciones
	Entonces se observa que se puede inyectar codigo
	Y se crea una consulta asi: barack`= 111,`bill`= `bill
	Entonces esto permite asignar 111 votos de una vez
	Y el reto es solucionado.
	
