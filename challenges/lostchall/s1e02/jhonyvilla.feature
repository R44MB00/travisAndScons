#language: es

  Característica: Resolver reto Challenge S1E02
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web que pide una solución
    Y esa solución es controlada por una función javascript
    Cuando veo el código fuente de la página
    Y encuentro la función
    Entonces resuelvo el reto
