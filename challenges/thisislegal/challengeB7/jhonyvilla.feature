#language: es

  Característica: Resolver reto Bonus Challenge 7
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa ARCHPR en su versión 4.53

  Escenario: Solución exitosa
    Dado un archivo .zip con contraseña
    Cuando uso ARCHPR para averiguar la contraseña
    Y descomprimo el archivo
    Y obtengo una archivo .rar tambien protegido por contraseña
    Y vuelvo a usar el programa para averiguarla
    Y descomprimo el archivo
    Y obtengo un archivo .txt con la respuesta
    Entonces resuelvo el reto
