#language: es

  Característica: Resolver reto 5
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un hash
    Cuando identifico el hash usando la página https://duckduckgo.com
    Y desencripto el hash usando la página https://crackstation.net/
    Entonces habré resuelto el reto
