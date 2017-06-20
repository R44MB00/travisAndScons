#language: es

  Característica: Resolver reto 127
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un código en PHP se pide descifrar el mismo
    Y publicar la respuesta en formato implode
    Cuando miro el código PHP
    Y me doy cuenta que se hace uso de una función de encriptación
    Y uso esta herramienta online https://toolki.com/en/php-decoder/
    Y encuentro la información oculta
    Entonces resuelvo el reto
