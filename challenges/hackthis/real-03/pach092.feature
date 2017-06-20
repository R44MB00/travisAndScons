# language: es

Característica: Resolver reto 3
  Del sitio hackthis
  De la categoría Real
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Real 3

  Escenario: Solución exitosa
    Dado un enlace para entrar a una página
    Entonces reviso el código fuente
    Y encuentro un script que apunta a login.js
    Entonces asocio palabras parecidas a login y encuentro una
    Y copio uno de los usuarios y su contraseña
    Entonces resuelvo el reto
