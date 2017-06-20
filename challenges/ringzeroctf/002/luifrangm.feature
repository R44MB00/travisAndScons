# language: es

Característica: Obtener la bandera
  Del sitio Ringzer0team.com
  De la categoría SQL Injection
  Con mi usuario luifrangm

  Antecedentes:
    Dado que estoy registrado en el sitio https://ringzer0team.com/
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
    
  Escenario: Intento fallido
    Dado una pagina web de login
	Y utilizo la extensión Tamperdata de firefox
	Entonces inicio la captura y modificación de parámetros.
	Y el parámetro "username" del método "POST" 
	Y se encuentra el valor admin
	Entonces lo modifico agregando ' or '1' = '1
	Entonces el resultado es un error de mysql y no logro loguearme.

  Escenario: Intento fallido
    Dado el error anterior y descubriendo que la base de datos es mysql
	Y se intenta de nuevo agregando al final "--" para crear un comentario 
	Y al final de la instruccion sql 
	Entonces la modifico agregando ' or 1 = 1 --
	Y el resultado es un error de mysql y no logro loguearme.
	
  Escenario: Solución exitosa
    Dado el error anterior intento lo mismo
	Y esta vez agrego un "#"
	Entonces se crea un comentario en php
	Y la modifico agregando ' or 1 = 1 # para truncar a la derecha
	Y logro loguearme exitosamente, me arroja la siguiente bandera:
	Entonces la respuesta es FLAG-sdfoip340e89rfuj34woit
	Y El reto es solucionado.
	