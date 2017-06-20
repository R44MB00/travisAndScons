#language: es

  Característica: Resolver reto PHP 0817
    Del sitio wechall.net
    De la categoría Exploit, PHP
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y he resuelto el reto PHP LFI del mismo sitio

  Escenario: Solución exitosa
    Dada una pagina web vulnerable a LFI
    Y se muestra el código vulnerable
    Y se pide acceder al archivo solution.php
    Cuando analizo el codigo
    Y me doy cuenta que las paginas se acceden a través de una variable
    Y le doy a la variable el nombre del archivo
    Entonces resuelvo el reto
