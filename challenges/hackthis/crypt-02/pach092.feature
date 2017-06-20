# language: es

Característica: Resolver reto 2
  Del sitio hackthis
  De la categoría Crypt
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Crypt 2

  Escenario: Solución exitosa
    Dado un texto encriptado
    Entonces me doy cuenta que está encriptado en caesar
    Entonces por medio de una herramienta en línea de descifrado el texto se revela
    Y copio la contraseña
    Entonces resuelvo el reto
