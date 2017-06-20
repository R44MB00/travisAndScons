# language: es

Característica: Resolver reto 1
  Del sitio hackthis
  De la categoría JavaScript
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Google Chrome versión 56.0.2924.87
    Y tengo acceso a internet
    Y he resuelto el reto JavaScript 1

  Escenario: Solución exitosa
    Dado un campo en el que tengo que ingresar una contraseña
    Entonces reviso el código fuente
    Y en la última parte encuentro una variable de nombre correct
    Entonces digito la palabra de la variable correct
    Entonces resuelvo el reto
