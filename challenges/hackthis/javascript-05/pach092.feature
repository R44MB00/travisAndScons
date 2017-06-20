# language: es

Característica: Resolver reto 5
  Del sitio hackthis
  De la categoría JavaScript
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Google Chrome versión 56.0.2924.87
    Y tengo acceso a internet
    Y he resuelto el reto JavaScript 5

  Escenario: Solución fallida
    Dado un campo en el que tengo que ingresar una contraseña
    Entonces reviso el codigo fuente de la pagina
    Y encuentro un enlace a un script
    Entonces encuentro en el script funciones
    Entonces abro la consola de Google Chrome y ejecuto por alert la funcion a
    Y en una alerta muestra la direccion de la pagina web
    Entonces la copio como contraseña
    Entonces no resuelvo el reto
    Pero concluyo que la solucion esta en las funciones

  Escenario: Solución fallida
    Dado otra funcion en el script
    Entonces ejecuto el segundo script en la consola
    Y en una alerta muestra el numero 18
    Entonces copio una contraseña de 18 caracteres
    Entonces no resuelvo el reto

    Escenario: Solución exitosa
    Dado otra funcion en el script
    Entonces ejecuto el tercer script en la consola
    Y en una alerta muestra la contraseña
    Entonces resuelvo el reto
