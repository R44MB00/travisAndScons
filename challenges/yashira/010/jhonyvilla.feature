#language: es

  Característica: Resolver reto 10
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado el programa cain y abel en su versión 4.53

  Escenario: Solución exitosa
    Dado un archivo .pwl
    Cuando descargo el archivo
    Y me doy cuenta que pertenece a un usuario de la página
    E intuyo que el usuario usado en el sitio es probablemente el usuario del archivo
    Y uso cain y abel para encontrar la contraseña
    Entonces habré resuelto el reto
