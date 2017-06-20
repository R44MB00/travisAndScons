# language: es

Característica: Resolver reto 11
  Del sitio hackthissite
  De la categoría basic
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Basic 11

  Escenario: Solución fallida
    Dado una página con canciones de Elton
    Entonces intento ingresar al archivo htaccess
    Y no existe
    Entonces no resuelvo el reto
    Pero concluyo que el archivo htaccess tiene la respuesta

  Escenario: Solución fallida
    Dado una página con canciones de Elton
    Entonces intento ingresar al directorio Elton
    Y no existe
    Entonces no resuelvo el reto

  Escenario: Solución exitosa
    Dado una página con canciones de Elton
    Entonces ingreso al directorio correcto
    Y en el último enlace ingreso a .htaccess
    Entonces encuentro un enlace ignorado
    Entonces ingreso a ese archivo
    Y encuentro la contraseña
    Entonces ingreso a index.php
    Y pego la contraseña
    Entonces resuelvo el reto
