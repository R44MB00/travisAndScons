#language: es

  Característica: Resolver reto Challenge 5
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web se pide encontrar una contraseña
    Y que esta contraseña es enviada por email al presionar un botón
    Cuando inspecciono la página
    Y cambio el email al que se envia la contraseña por el mío
    Entonces resuelvo el reto
