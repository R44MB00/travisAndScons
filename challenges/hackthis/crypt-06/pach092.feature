# language: es

Característica: Resolver reto 6
  Del sitio hackthis
  De la categoría Crypt
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y tengo instalado el software audacity versión 2.1.12
    Y he resuelto el reto Crypt 6

  Escenario: Solución fallida
    Dado un audio
    Entonces con audacity analiza el espectro
    Y descifro con una herramienta online de morse
    Entonces copio el código
    Entonces no resuelvo el reto
    Pero concluyo que la respuesta está en simbología

  Escenario: Solución fallida
    Dado un código numérico
    Entonces copio el código
    Entonces no resuelvo el reto
    Pero concluyo que es por simbología ASCII

  Escenario: Solución fallida
    Dado un código numérico
    Entonces busco su equivalente en ASCII
    Y copio el código generado
    Entonces no resuelvo el reto
    Pero concluyo que está en base 16

  Escenario: Solución exitosa
    Dado un código numérico
    Entonces por medio de una herramienta online hago conversión a base decimal
    Y genero el código ASCII con los números convertidos
    Y copio el nuevo código
    Entonces resuelvo el reto
