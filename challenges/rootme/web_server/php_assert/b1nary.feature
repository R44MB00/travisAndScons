# language: es

Característica: resolver reto realistic
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web simple
    Y he resuelto retos de web server
    Y tengo conocimiento en php
    
  Escenario: Explorando el sitio
    Dada una url
    Cuando ingreso "index" en el parámetro de la url
    Y veo que aparece un error
    Entonces puedo ver que el sitio es vulnerable a Local File Inclusion

  Escenario: Primer intento fallido
    Dada una url vulnerable a LFI
    Cuando intento acceder a un directorio anterior como ../index.php
    Y recibo un error de php assert
    Entonces no resuelvo el reto
    Pero concluyó que debo inyectar codigo de php en la expresión assert que se está ejecutando

  Escenario: Segundo intento fallido
    Dada una url vulnerable a LFI
    Cuando ingreso el comando system("ls -a") en el parámetro de php
    Y veo que sale un error
    Entonces no resuelvo el reto
    Pero concluyo que debo crear un payload con varias expresiones

  Escenario: Tercer intento fallido
    Dada una url vulnerable a LFI
    Cuando creo un string payload que contiene unas expresiones y el comando system("cat index.php")
    Y veo que no funciona
    Entonces no resuelvo el reto
    Pero concluyo que debo reemplazar algunos caracteres por su valor en urlencode

  Escenario: Solucion
    Dados una url vulnerable a LFI
    Y un payload que ejecuta el comando system("cat .passwd")
    Cuando ingreso el payload en el parámetro de la url
    Y veo el mensaje con el flag
    Entonces obtengo la solución del reto
