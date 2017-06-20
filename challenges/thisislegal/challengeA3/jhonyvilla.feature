#language: es

  Característica: Resolver reto Aplication 3
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa OllyDBG

  Escenario: Solución exitosa
    Dada una aplicación .exe que busca una ubicación especifica
    Cuando la abro con OllyDBG
    Y la analizo detalladamente
    Y encuentro que busca una url
    Y accedo a mi url a través del navegador
    Entonces resuelvo el reto
