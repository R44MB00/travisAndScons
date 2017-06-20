# language: es

Característica: Resolver reto 23
  Del sitio yashira
  De la categoría Cracking
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows versión 10
    Y tengo instalado el software accesspv version 1.12
    Y tengo acceso a internet
    Y he resuelto el reto Cracking 23

  Escenario: Solución exitosa
    Dado una base de datos con contraseña
    Entonces con acesspv obtengo la contraseña
    Y copio la contraseña
    Entonces resuelvo el reto
