#language: es

  Característica: Resolver reto Bonus Challenge 6
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
    Y veo que la validación se hace contra la variable 'nls'
    Y creo varios alert para hacerle seguimiento a la variable
    Y obtengo el valor final de dicha variable
    Entonces resuelvo el reto
