#language: es

  Característica: Resolver reto User Challenge 2
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada un parrafo con información sobre xss
    Y se pide encontrar un password escondido en él
    Cuando analizo el parrafo
    Y veo que todas las letras son minúsculas excepto unas cuantas
    Y uno las letras en mayúscula
    Y obtengo obtengo una palabra
    Entonces resuelvo el reto
