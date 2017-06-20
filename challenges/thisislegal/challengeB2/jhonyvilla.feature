#language: es

  Característica: Resolver reto Bonus Challenge 2
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web que solicita un password
    Y ese password es hello
    Cuando uso la herramienta inspeccionar del navegador
    Y cambio el valor de la propiedad disabled
    Y pongo el password
    Entonces resuelvo el reto
