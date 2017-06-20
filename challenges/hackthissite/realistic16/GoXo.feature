# language: es

Característica: resolver reto 16
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo el buscador de directorios ocultos dirsearch version 0.3.7
    Y tengo el software para crackear flash: JPEXS Free Flash decompiler v 10.0
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido - Reconocimiento
    Dado un sitio web que presta servicios de correos electrónicos
    Cuando utilizo el dirsearch para buscar directorios o archivos ocultos
    Y de extensión .php y .txt
    Entonces encuentro dos archivos importantes: config.txt y auth.php
    Y además encuentro en los comentarios del código fuente un ruta
    Y esta ruta me lleva a un formulario para ingresar como administrador
    Y este formulario está hecho en flash, se llama login.swf y es decargable
    Pero no logro nada más y no paso el reto

  Escenario: Segundo intento fallido - Explotando el formulario en flash
    Dado un programa en flash llamado login.swf
    Cuando le hago ingeniería inversa con el software JPEXS
    Y exploro todo el contenido
    Entonces no encuentro ningún indicativo de credenciales
    Pero veo una url que parece importante: admin.php?auth=true&id=63a4bf12cd
    Y si intento entrar a esta URL me dice que config.txt no está correcto
    Y también veo que la variable authed debe estar puestra en 'true'
    Y esto para poder entrar como administrador al sitio web
    Y concluyo que debo cambiar config.txt de alguna forma para acceder
    Y también explotar alguna vulnerabilidad

  Escenario: Último intento fallido - Panel de usuario
    Dado un formulario de registro que debo explotar
    Cuando creo una nueva cuenta de correo electrónico
    Y exploro el panel del usuario
    Y veo que se puede actualizar cierta información
    Entonces intento con todos los medios explotar alguna vulnerabilidad
    Pero no tengo éxito
    Y sigo sin pasar el reto

  Escenario: Solución exitosa - Creando el usuario pertinente
    Dado un formulario para crear un usuario
    Cuando creo el usuario con nombre: ..
    Y cualquier contraseña
    Y logro ingresar y actualizar la información
    Y despues ingreso a admin.php?auth=true&id=63a4bf12cd
    Entonces al parecer el archivo /config.txt se logra sobreescibir
    Y esto es debido a que el nombre de usuario es: ..
    Y logro ingresar al panel de administración
    Y al parecer no puedo ver al información del correo objetivo
    Cuando veo que existe otro programa flash llamado check_email.swf
    Y lo descargo para hacerle ingeniería inversa
    Y veo una url inusual: /check_email.php?auth=true&id=63a4bf12cd&email=
    Y simplemente aplico esta url con el email objetivo como parámetro
    Entonces paso el reto

