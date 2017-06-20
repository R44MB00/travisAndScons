#language: es

  Característica: Resolver reto Challenge 10
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa flasm.exe

  Escenario: Solución exitosa
    Dada una función en flash que pide una contraseña
    Cuando descargo el flash de la página
    Y lo desensamblo usando flasm.exe en un archivo de texto
    Y miro el archivo resultante
    Y encuentro la contraseña
    Entonces resuelvo el reto
