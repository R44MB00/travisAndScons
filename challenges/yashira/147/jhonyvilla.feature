#language: es

  Característica: Resolver reto 147
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un texto encriptado
    Y el nombre del reto cifrado irrompible
    Cuando investigo cual es el cifrado que se considera irrompible
    Y me doy cuenta que es el cifrado vigenere
    Cuando busco una herramienta online para descifrarlo
    Y al desencriptarlo dice que la respuesta al reto es la clave de encriptación
    Y veo cual fue la clave usado
    Entonces resuelvo el reto
