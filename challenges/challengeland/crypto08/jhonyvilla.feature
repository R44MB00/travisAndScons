#language: es

  Característica: Resolver reto Cryptography 8
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo Netbeans instalado en su versión 8

  Escenario: Solución exitosa
    Dado un hash encriptado
    Cuando determino que es base64
    Y uso la herramienta online elhacker.net/base64.html para descifrarlo
    Y obtengo un mensaje encriptado con cesar
    Y uso mi programa en java para desencriptarlo
    Entonces resuelvo el reto
