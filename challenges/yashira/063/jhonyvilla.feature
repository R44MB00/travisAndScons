#language: es

  Característica: Resolver reto 63
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado Netbeans en su versión 8
    Y tengo instalado JAD
    Y tengo instalada la extensión Tamper en mi navegador

  Escenario: Primer intento fallido
    Dada una página web que muestra varias condiciones que se deben cumplir
    Y esas condiciones hacen referencia al sistema operativo, el navegador
    Y la ubicación de la conexión
    Cuando examino el código fuente de la página
    Y no encuentro nada importante
    Cuando cambio el user agent para que cumpla las dos primeras condiciones
    Y uso un proxy para disfrazar mi ubicación
    Entonces no resuelvo el reto
    Pero concluyo que la ubicación se debe cambiar de manera similar a las condiciones anteriores

  Escenario: Segundo intento fallido
    Dada una página web que muestra varias condiciones que se deben cumplir
    Y esas condiciones hacen referencia al sistema operativo, el navegador
    Y la ubicación de la conexión
    Cuando cambio el user agent para que cumpla las dos primeras condiciones
    Y cambio la propiedad geolocalización de mi navegador
    Entonces no resuelvo el reto
    Pero concluyo que para cambiar la ubicación requiero de alguna herramienta

  Escenario: Último intento fallido
    Dada una página web que muestra varias condiciones que se deben cumplir
    Y esas condiciones hacen referencia al sistema operativo, el navegador
    Y la ubicación de la conexión
    Cuando cambio el user agent para que cumpla las dos primeras condiciones
    Y uso la herramienta Tamper para cambiar los request headers
    Y el valor referer lo cambio por una página rusa
    Entonces no resuelvo el reto
    Pero concluyo que debo cambiar otro de los headers que hacen referencia a la ubicación

  Escenario: Solución exitosa
    Dada una página web que muestra varias condiciones que se deben cumplir
    Y esas condiciones hacen referencia al sistema operativo, el navegador
    Y la ubicación de la conexión
    Cuando cambio el user agent para que cumpla las dos primeras condiciones
    Y uso la herramienta Tamper para cambiar los request headers
    Y el valor lenguaje aceptado lo cambio por ruso, la página me muestra un mensaje
    Y ese mensaje dice que el reto se resuelve con usuario:password
    Cuando veo el codigo fuente de la página
    Y en este hay un archivo .class de un applet
    Y descargo el .class
    Y uso JAD para decompilarlo
    Y obtengo un archivo .jad
    Cuando abro ese archivo con Netbeans
    Y estudio el codigo del applet
    Y veo que tiene un metodo de desencriptacion de un texto encriptado
    Y ese texto encriptado lo toma de la página
    Y hago seguimiento a las variables del metodo hasta que obtengo los datos requeridos
    Cuando desactivo javascript en la página del reto para evitar que cargue las condiciones
    Y doy la respuestar user:password
    Entonces resuelvo el reto
