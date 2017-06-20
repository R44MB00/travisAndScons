#language: es

  Característica: Resolver reto Realistic 2
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada un sitio web de un grupo racista
    Y se pide acceder como administrador para cambiarlo
    Cuando examino el código fuente del sitio
    Y encuentro una página update.php
    Y esa página requiere un usuario y contraseña
    Y uso la instrucción mas basica de SQLi
    Entonces resuelvo el reto
