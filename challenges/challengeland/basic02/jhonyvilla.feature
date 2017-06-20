#language: es

  Característica: Resolver reto basic 2
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web donde dice que la respuesta es 1000
    Cuando examino el codigo fuente del sitio
    Y me percato solo admite máximo el número 100 por valor
    Y uso la herramienta inspeccionar del navegador
    Y cambio ese valor máximo por 1000
    Entonces resuelvo el reto
