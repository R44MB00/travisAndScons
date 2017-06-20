#language: es

  Característica: Resolver reto basic 5
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web donde dice welcome guest
    Y supongo que tengo que ser reconocido como Admin
    Cuando examino la url de la página
    Y veo que hay una variable profile
    Y esa variable tiene por valor guest
    Cuando cambio el valor de la variable por Admin
    Y recargo la página
    Entonces resuelvo el reto
