# language: es

Característica: Resolver reto 20
  Del sitio yashira
  De la categoría Cracking
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Cracking 1

  Escenario: Solución fallida
    Dado un archivo rar
    Entonces por medio de una herramienta para descifrar rar
    Entonces encuentro la contraseña
    Entonces resuelvo el reto
