#language: es

  Característica: Resolver reto PHP LFI
    Del sitio wechall.net
    De la categoría Exploit, PHP
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web vulnerable a LFI
    Y el codigo php de dicha página
    Y se pide acceder al archivo solution.php
    Cuando investigo acerca de dicha vulnerabilidad
    Y acceso a dicha pagina usando la instrucción ../../solution.php%00
    Entonces resuelvo el reto
