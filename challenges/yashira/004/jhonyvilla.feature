#language: es

  Característica: Resolver reto 4
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un código encriptado en base64
    Y desencripto el código usando la herramienta online http://www.elhacker.net/base64.html
    Entonces habré resuelto el reto
