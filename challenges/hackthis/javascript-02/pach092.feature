# language: es

Característica: Resolver reto 2
  Del sitio hackthis
  De la categoría JavaScript
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Google Chrome versión 56.0.2924.87
    Y tengo acceso a internet
    Y he resuelto el reto JavaScript 2

  Escenario: Solución exitosa
    Dado un campo en el que tengo que ingresar una contraseña
    Entonces reviso el código fuente y encuentro una script con operación matemática
    Entonces uso un compilador de JavaScript Online
    Entonces el resultado de esa operación es nueve
    Entonces reviso de nuevo el código fuente
    Y encuentro un script que revisa solo la longitud de la contraseña
    Entonces ingreso cualquier cadena de texto de 9 caracteres de longitud
    Entonces resuelvo el reto
