# language: es

Característica: resolver reto 14
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04 x64
    Y tengo acceso a internet utilizando mozilla firefox
    Y tengo a la mano el software dirsearh (python3) versión 0.3.7

  Escenario: Primer intento fallido
    Dado un sitio web llamado Yuppers que utiliza protocolo cgi con perl
    Cuando utilizo el software dirsearch para encontrar directorios/archivos
    Y estos están ocultos
    Y busco archivos con extensión txt, cgi, html
    Entonces encuentro archivos importantes
    Y estos son administrator.cgi, moderator.cgi, x.txt, robots.txt
    Pero no soluciono el reto

  Escenario: Segundo intento fallido
    Dado un sitio web con unas páginas para ingresar con credenciales
    Cuando voy a la página news, veo que hay una vulnerabilidad cuando ingreso '
    Y si ingreso una inyección "Null Byte: .%00"
    Entonces podré ver desplegado todo el direcorio de la paǵina
    Y mas importante, se puede explotar este parámetro para ver otros archivos
    Cuando ingreso moderator.cgi%00 y administrador.cgi%00 como parámetros
    Entonces podré ver el código que generan
    Y veo que existe una función isadmin() para acreditar las credenciales
    Pero no encuentro las credenciales para ingresar
    Y no paso el reto

  Escenario: Último intento fallido
    Dado un error explotado en la página news
    Y una paǵina de credenciales: moderator.cgi
    Cuando después de mucho intentos logro ingresar con: isadmin
    Y no era tan obvio pero logro ingresar como administrador
    Entonces estoy adentro de la consola de administración: /administrador.cgi
    Y puedo desplegar por medio de búsquedas a los usuarios o los emails
    Cuando utilizo un 'wild character' como el asterisco: *
    Y es un caracter que en los comandos de línea muestra todo un contenido
    Y como estamos en un servidor 'cgi' el asterisco es bien interpretado
    Entonces efectivamente nos muestra las credenciales del administrador
    Pero no pasamos el reto

  Escenario: Solución exitosa
    Dadas unas credenciales de administrador
    Cuando me dirijo a la pagina de 'login'
    Y logro ingresar estas credenciales
    Entonces podré pasar este reto
