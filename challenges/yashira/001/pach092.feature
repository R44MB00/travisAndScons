# language: es

Característica: Resolver reto 1
  Del sitio yashira
  De la categoría Cracking
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Cracking 1

  Escenario: Solución exitosa
    Dado un hash
    Entonces por medio de una herramienta online descifro el hash
    Y copio la contraseña
    Entonces resuelvo el reto
