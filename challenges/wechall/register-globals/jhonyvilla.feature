#language: es

  Característica: Resolver reto Register Globals
    Del sitio wechall.net
    De la categoría Exploit, PHP
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web vulnerable
    Y el código php de dicha página
    Y se pide ingresar un username y password
    Y dan un usuario 'test' con su respectiva contraseña
    Cuando investigo acerca las vulnerabilidades en los register globals
    Y analizo el código php
    Y pongo la instrucción en la url que me permite aprovechar la vulnerabilidad
    Entonces resuelvo el reto
