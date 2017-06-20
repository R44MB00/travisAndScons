#language: es

  Característica: Resolver reto 158
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una secuencia de numeros
    Y esos numeros representan un mensaje encriptado
    Cuando identifico que fue encriptado usando cifrado polybius
    Y que se usarón dos tablas para encriptar el mensaje
    Cuando construyo las dos tablas
    Y reemplazo los valores numericos por su ubicación cartesiana en cada tabla
    Entonces resuelvo el reto
