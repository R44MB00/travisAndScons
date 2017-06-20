#language: es

  Característica: Resolver reto basic 4
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Y esa contraseña es enviada por email al administrador
    Cuando uso la herramienta inspeccionar del navegador
    Y cambio el email del administrador por el mío
    Y reviso el correo enviado
    Entonces resuelvo el reto
