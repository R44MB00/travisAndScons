#language: es

  Característica: Resolver reto Encryption 4
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un mensaje encriptado
    Cuando intento descifrarlo usando los metodos conocidos
    Y busco algún otro sistema de encriptación
    Entonces no resuelvo el reto
    Pero concluyo que quizas usando un patron lógico encontraré la respuesta

  Escenario: Solución exitosa
    Dado un mensaje encriptado
    Cuando descubro que la cantidad de caracteres que tiene es par incluidos los espacios
    Y se me ocurre dividirlo a la mitad
    Y descubro que el primer caracter de la primera mitad
    Y el primer caracter de la segunda mitad se corresponden
    Y así sucesivamente
    Entonces resuelvo el reto
