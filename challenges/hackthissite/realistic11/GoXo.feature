# language: es

Característica: resolver reto 11
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano el plugin Tamper Data de firefox
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido - Reconocimiento
    Dado un sitio web escrito en perl
    Y la variable page (?page) para cambiar de página dentro del sitio web
    Y como parametros tenemos: main, features, faq, terms, Pricing, email
    Cuando ingreso como párametro una comilla simple ' me sale un error
    Y cuando ingreso ./ me indica otro error
    Entonces infiero que puedo hacer una inyección de comandos
    Y como se trata de perl puedo hacer la inyección entre pipeline: ||
    Y quiero ver todo el directorio de la página con: |ls|
    Y veo el directorio de la página con archivos cruciales
    Y veo directorios cruciales como: /client_http_docs, /bs.dbase y /admin
    Pero no paso el reto ya que no tengo las credenciales para ingresar a /admin

  Escenario: Segundo intento fallido - Escalando privilegios
    Dado un sitio web con unos cuantos directorios cruciales encontrados
    Y cuando ingreso a /client_http_docs/therightwayradio/
    Entonces se despliega toda una nueva página
    Y veo que puedo ingresar al foro de esta página
    Y puedo seleccionar cualquier perfil de usuario
    Y veo que la url cambio a ?page=userinfo&id=31753
    Cuando cambio la id a el valor de cero
    Entonces puedo ingresar al perfil de usuario y cambiar la contraseña
    Y accedo como el usuario con el id=0
    Pero es un usuario común y corriente y no tengo privilegios
    Y no paso el reto

  Escenario: Tercer intento fallido - Escalando privilegios
    Dada la página /therightwayradio e ingresado como usuario con id=0
    Y vemos que existe un link mod en la parte superior derecha, ingresamos
    Y vemos un formulario donde nos muestran el tipo de base de datos: SQLite
    Cuando quiero conocer las 'tablas' de las bases de datos
    Y utilizo: SELECT * FROM sqlite_master
    Entonces veo que hay varias tablas como users, news
    Pero son las tablas de la base de datos de /therightwayradio
    Y no son las tablas de la base de datos de la página principal

  Escenario: Último intento fallido - Inyecciones SQLite
    Dado un formulario para hacer inyección SQLite
    Y estamos ubicados en la base de datos /rwr.dbase (viendo código fuente)
    Y queremos llegar a la base de datos de la página principal
    Y esta se llama /bs.dbase
    Cuando usamos el plugin Tamper Data para interceptar una petición
    Y ponemos en el formulario: SELECT * FROM sqlite_master
    Y Tamper Data está encendido
    Entonces podemos cambiar el directorio de la base de datos en el Tamper
    Y la base de datos actual es ./rwr.dbase pero debemos llegar a la principal
    Cuando cambiamos ./rwr.dbase por ../../../bs.dbase
    Entonces nos muestra la tabla principal del sitio raiz: web_hosting
    Y utilizo otra inyección para que me muestre todas las columnas de la tabla
    Y esta es: SELECT * FROM web_hosting, aplicando el tamper data
    Y aplicado a la base de datos principal
    Entonces se develan los usuarios y contraseñas de los usuarios principales
    Y puedo ingresar a /admin como wonderdiet:suckereveryminute (uno de tantos)
    Pero no paso el reto ya que la consola de administración presenta problemas

  Escenario: Solución exitosa - consola de administración
    Dada una consola de administración
    Y tengo acceso con el usuario wonderdiet:suckereveryminute
    Y veo que la consola ha sido modificada para solo permitir enlistar
    Y descargar archivos
    Cuando intento descargar una imagen
    Y veo como la url cambia
    Y es /d.pl?file=/var/www/budgetserv/html/client_http_docs/wonderdiet/mc.gif
    Entonces puedo cambiar el parametro de file con el directorio que necesito
    Y es file=/var/www/budgetserv/html/client_http_docs/space46/src.tar.gz
    Y esto para cumplir la misión del reto de descargar el archivo src.tar.gz
    Y pasaré el reto