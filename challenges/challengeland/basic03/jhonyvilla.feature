#language: es

  Característica: Resolver reto basic 3
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Cuando examino el codigo fuente del sitio
    Y no encuentro nada particularmente destacable
    Y lo comparo con el código fuente de los retos anteriores
    Y veo que hay un recurso css externo
    Cuando analizo el código de ese css
    Y veo la contraseña
    Entonces resuelvo el reto
