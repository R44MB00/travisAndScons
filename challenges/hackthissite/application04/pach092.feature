# language: es

Característica: Resolver application 4
  Del sitio hackthissite
  De la categoría application
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite
    Y tengo el sistema operativo Windows versión 10
    Y tengo instalado el software VB Decompiler Pro versión 10.1
    Y tengo instalado el software OllyDbg versión 1.10
    Y tengo acceso a internet
    Y he resuelto el reto application 4

  Escenario: Solución exitosa
    Dado un programa para dar clic
    Entonces descompilo el programa para ver su código
    Y con los saltos de línea conocidos
    Entonces edito las líneas con OllyDbg
    Entonces ejecuto la aplicación editada
    Y la aplicación muestra la contraseña
    Entonces paso el reto
