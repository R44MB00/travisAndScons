# language: es

Característica: Resolver reto 3
  Del sitio yashira
  De la categoría Cracking
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Cracking 3

  Escenario: Solución exitosa
    Dado un ripemd160
    Entonces por medio de una herramienta online descifro el contenido
    Y copio la contraseña
    Entonces resuelvo el reto
