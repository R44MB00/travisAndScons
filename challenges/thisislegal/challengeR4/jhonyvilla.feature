#language: es

  Característica: Resolver reto Realistic 4
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un sitio web de una seudo empresa de seguridad informática
    Y se pide mirar su seguridad
    Cuando miro el codigo fuente del index
    Y veo que hay dos páginas más order.php y opinions.php
    Y veo que en order.php hay un formulario
    Y que cuando lo lleno se envía a order2.php
    Y ejecuta codigo javascript
    Cuando miro opinions.php veo que tiene 3 enlaces hacia la misma página
    Y esa página es read.php la cual está en otro directorio
    Y hace uso de la variable 'customer'
    Y pruebo si el sitio es vulnerable a LFI con la instrucción ../../
    Cuando compruebo que si es vulnerable
    Y trato de acceder a order2.php de las páginas del sitio
    Y me muestra un error al intentar abrir un archivo desconocido
    Y entonces trato de acceder a ese archivo
    Y muestra un codigo en javascript donde me dice que existe un archivo orders.db
    Y ese archivo esta en la carpeta /secure
    Y abro ese archivo normalmente con el navegador
    Y despliega un metodo de autenticación apache
    Y supongo que puedo acceder al archivo .htaccess con LFI
    Cuando intento acceder al .htaccess me dice que no se puede leer el archivo .ugnpprff
    Y cuando intento acceder al archivo .ugnpprff me dice lo contrario
    Entonces no resuelvo el reto
    Pero concluyo que quizas el .htaccess está en la carpeta /secure

  Escenario: Solución exitosa
    Dado un sitio web de una seudo empresa de seguridad informática
    Y se pide mirar su seguridad
    Y voy directamente a read.php, la pagina vulnerable a LFI
    Y trato de acceder al archivo /secure/.htaccess
    Y me muestra error al intentar abrir el archivo /frpher/.ugnpprff
    Y trato de acceder a ese archivo
    Y muestra la existencia del archivo /secure/.htpasswd
    Y trato de acceder a ese archivo
    Y me muestra error al intentar abrir el archivo /frpher/.ugnpprff
    Y trato de acceder a ese archivo
    Y obtengo un usuario y contraseña encriptada
    Cuando desencripto la contraseña
    Y uso las credenciales en orders.db
    Entonces resuelvo el reto
