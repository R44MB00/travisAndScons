#language: es

  Característica: Resolver reto Challenge 9
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un texto encriptado usando el metodo de sustitución
    Cuando separo la primer palabra la cual repite dos veces seguidas la misma letra
    Y determino que esa letra podría ser l
    Y por tanto la palabra mas probable es well
    Y reemplazo cada letra en el texto según su equivalencia
    Y hago lo mismo con las demas palabras de 2 y 3 letras
    Y supongo la palabra mas probable en cada caso
    Entonces resuelvo el reto
