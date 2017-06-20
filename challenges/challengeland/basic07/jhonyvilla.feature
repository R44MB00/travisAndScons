#language: es

  Característica: Resolver reto basic 7
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web que pide usar el ChallengeAgent
    Y supongo que lo que pide es cambiar el user agent
    Cuando lo cambio
    Y recargo la página
    Entonces resuelvo el reto
