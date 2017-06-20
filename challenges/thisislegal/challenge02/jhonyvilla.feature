#language: es

  Característica: Resolver reto Challenge 2
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web con un usuario y contraseña
    Y se pide romper la función javascript que examina las credenciales
    Cuando examino el codigo fuente y veo la función
    Y en esta las credenciales solicitadas
    Entonces resuelvo el reto
