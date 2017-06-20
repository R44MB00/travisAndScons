#language: es

  Característica: Resolver reto 241
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo acceso a las unidades de estudio CCNA de Cisco

  Escenario: Solución exitosa
    Dado un hash
    Cuando identifico el hash como resultado de usar encriptación en dispositivos CISCO
    Y desencripto el hash usando la página http://packetlife.net/toolbox/type7/
    Entonces habré resuelto el reto
