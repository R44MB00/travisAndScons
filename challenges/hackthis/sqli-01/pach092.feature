# language: es

Característica: Resolver reto 1
  Del sitio hackthis
  De la categoría SQLi
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto SQLi 1

  Escenario: Solución fallida
    Dado un campo en el que tengo que ingresar un usuario y una contraseña
    Entonces realizo una inyección SQL en los dos campos
    Y me arroja un error de sintaxis
    Entonces no resuelvo el reto
    Pero concluyo que la solución es por medio de inyección SQL a un usuario especifico

  Escenario: Solución exitosa
    Dado un usuario especifico
    Entonces copio en el campo usuario un usuario especifico
    Y en el campo contraseña realizo la inyección SQL
    Entonces resuelvo el reto
