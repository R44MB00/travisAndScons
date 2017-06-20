#language: es

  Característica: Resolver reto User challenge 1
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web que solicita usuario y password
    Y estos son validados por una función javascript
    Cuando analizo la función
    Y veo que la validación se hace contra la variable 'd1'
    Y esa variable es un color en hexadecimal
    Y creo varios alert para saber el color
    Entonces resuelvo el reto
