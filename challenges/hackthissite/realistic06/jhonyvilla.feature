#language: es

  Característica: Resolver reto Realistic 6
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un mensaje encriptado con el algoritmo XECryption
    Y se pide descifrarlo
    Y enviar el texto original al solicitante
    Cuando uso esta herramienta online http://telmo.pt/xecryption/
    Y descifro el mensaje
    Cuando lo envio, por la opción de mensaje privado de hackthissite
    Entonces resuelvo el reto
