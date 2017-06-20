#language: es

  Característica: Resolver reto basic 1
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Cuando examino el codigo fuente del sitio
    Y encuentro el password entre los comentarios
    Entonces resuelvo el reto
