#language: es

  Característica: Resolver reto Crypto Substitution I
    Del sitio wechall.net
    De la categoría Crypto
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un texto encriptado usando el metodo de sustitución
    Y una pagina en wikipedia que explica ese metodo
    Cuando uso una herramienta online para desencriptar el texto basado en la información leída
    Entonces no resuelvo el reto
    Pero concluyo que debo descifrarlo manualmente

  Escenario: Solución exitosa
    Dado un texto encriptado usando el metodo de sustitución
    Y una pagina en wikipedia que explica ese metodo
    Cuando separo la primer palabra de tres letras
    Y determino que lo mas probable es que sea la palabra "the"
    Y reemplazo cada letra en el texto
    Y hago lo mismo con las demas palabras de 1, 2 y 3 letras
    Y supongo la palabra mas probable en cada caso
    Entonces resuelvo el reto
