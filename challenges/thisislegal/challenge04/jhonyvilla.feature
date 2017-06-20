#language: es

  Característica: Resolver reto Challenge 4
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo la extención EditThisCookie en mi navegador

  Escenario: Solución exitosa
    Dada una pagina web que indica acceso denegado
    Y ademas pide romper la cookie
    Cuando examino las cookies del sitio
    Y cambio el valor de una de ellas
    Entonces resuelvo el reto
