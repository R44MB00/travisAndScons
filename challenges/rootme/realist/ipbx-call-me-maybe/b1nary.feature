# language: es

Característica: obtener las credenciales para ingresar al IPBX GUI
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado una maquina virtual en una dirección dns
    Y mis conocimientos adquiridos en retos previos
    Y tengo instalado Debian 8
    Y tengo configurado mi router para aceptar conexiones externas
    
  Escenario: Explorando la máquina virtual
    Dado una máquina en una dirección dns
    Cuando hago nmap sobre la ip que apunta a el dns dado
    Y accedo al puerto 80 de la máquina utilizando el navegador web
    Entonces puedo ver diferentes servicios que me permiten saber qué está haciendo la máquina

  Escenario: Obteniendo los detalles del servicio web
    Dada una pagina web
    Cuando ingreso a la página web
    Y interactuó con los links
    Entonces puedo ver que utiliza versiones de FreePBX 2.7 y 2.5

  Escenario: Buscando vulnerabilidades
    Dada una pagina web
    Cuando busco en google exploits para las versiones identificadas de FreePbx
    Y encuentro múltiples exploits
    Entonces logró definir varios vectores de ataque

  Escenario: Primer intento fallido
    Dada una pagina web
    Cuando intento explotar una vulnerabilidad de SQL injection en el archivo /admin/cdr/call-log.php
    Y utilizo sqlmap
    Y veo que no puede extraer correctamente la información de la base de datos
    Entonces no resuelvo el reto
    Pero concluyo que debo hacer la inyección manualmente
    
  Escenario: Segundo intento fallido
    Dada una página web con una inyección sql
    Cuando leo la descripción detallada del exploit
    Y veo que hay un query para extraer el nombre de usuario
    Y otro para extraer el sha1 del password
    Y los obtengo
    Y intento encontrar la contraseña para el hash encontrado
    Entonces no resuelvo el reto
    Pero concluyó que la contraseña puede tener caracteres especiales o fue salteada
   
  Escenario: Tercer intento fallido
    Dada una pagina web
    Cuando intentó explotar la vulnerabilidad CVE 2014-7235
    Y no veo que el sistema arroje un error o mensaje de éxito
    Entonces no resuelvo el reto
    Pero concluyó que necesito probar otros vectores de ataque
    
  Escenario: Cuarto intento fallido
    Dada una pagina web
    Cuando intentó explotar la vulnerabilidad CVE 2014-1903 utilizando metasploit
    Y veo que el metasploit sugiere que el objetivo no es vulnerable
    Entonces no resuelvo el reto
    Pero concluyó que necesito probar otros vectores de ataque
    
  Escenario: Quinto intento fallido
    Dada una pagina web
    Cuando intentó explotar la vulnerabilidad CVE 2012-4869 utilizando metasploit
    Y veo que en múltiples intentos falla
    Y leo detalladamente como funciona la vulnerabilidad
    Entonces no resuelvo el reto
    Pero concluyó que no se está explotando porque no hay alguien que acepte la llamada con el payload
    
  Escenario: Escaneando detalladamente el servicio de VoIP
    Dada una máquina con un servicio de voip
    Cuando utilizo las herramientas de SIPvicious para obtener detalles del servicio VoIP mediante SIP
    Y utilizo svmap.py para obtener el puerto que atiende al servicio SIP
    Y utilizo svwar.py para enumerar las extensiones que estan activas en el servidor
    Y utilizo svcrack.py para obtener las contrasenas de algunas extensiones
    Entonces obtengo mucha más información del servicio VoIP
    
  Escenario: Sexto intento fallido
    Dada una pagina web
    Cuando utilizo las contraseñas y extensiones obtenidas previamente
    Y intento logearme en la página de administrador
    Y intento logearme en la página de voicemail
    Entonces no resuelvo el reto
    Pero concluyó que ninguna de estas contraseñas son las que acceden a los servicios web
    
  Escenario: Obteniendo credenciales para el Asterisk Call Manager
    Dada una pagina web
    Cuando intento explotar una vulnerabilidad encontrada en exploit-db
    Y veo que el archivo que se va explotar no existe
    Y veo que es posible navegar a través de los archivos que están en el directorio admin/modules/
    Y encuentro un archivo .agi con mucha información
    Y unas credenciales comentadas
    Entonces logró obtener las credenciales de administrador para el Asterisk Call Manager
    
  Escenario: Obteniendo información desde Asterisk Call Manager
    Dada una máquina con un servicio SIP de Asterisk
    Cuando me conecto por telnet a la dirección y puerto encontrado previamente
    Y utilizar las credenciales encontradas previamente
    Y listo todos los comandos
    Y veo el comando getconfig que sirve para leer el contenido de archivos .conf
    Y lo utilizo para leer el contenido de sip.conf extensions.conf voicemail.conf
    Entonces encuentro las credenciales para conectarse a la base de datos
    
  Escenario: Séptimo intento fallido
    Dada una maquina
    Cuando me intento conectar a mysql desde mi maquina
    Y veo el mensaje de error que dice que mi ip no está permitida para realizar conexiones
    Entonces no resuelvo el reto
    Pero concluyó que el servicio de mysql restringe las conexiones externas
    
  Escenario: Obteniendo un shell
    Dada una pagina web
    Cuando me intento logear con el usuario y contraseña de la base de datos
    Y veo que funcionan
    Y utilizo el exploit de subir falsos módulos con archivos php que se pueden ejecutar
    Entonces logró obtener un shell remoto
    
  Escenario: Octavo intento fallido
    Dada una maquina
    Cuando utilizo el shell remoto para escalar privilegios
    Y obtengo privilegios del usuario root
    Y leo el archivo /passwd
    Y obtengo el flag
    Y intento utilizar estas credenciales para solucionar el reto
    Entonces no soluciono el reto
    Pero concluyó que necesito obtener otras credenciales para ingresar al voicemail
    
  Escenario: Obteniendo credenciales para el voicemail
    Dado una maquina
    Cuando leo detalladamente el archivo voicemail.conf que obtuve previamente
    Y veo que solo tiene una línea donde dice 2000 => 0000
    Y he leido previamente que FreePBX y Asterisk utiliza el número de extensión como usuario
    Y consultó la estructura del archivo voicemail.conf
    Y veo que el segundo número es la contraseña
    Entonces obtengo las credenciales para ingresar al voicemail
    
  Escenario: Ultimo intento fallido
    Dada una pagina web
    Cuando intento utilizar las credenciales para ingresar al voicemail
    Y veo que a pesar de que funcionan aparece un error de que no es la solución del reto
    Entonces no soluciono el reto
    Pero concluyo que debo encontrar más información en el voicemail
    
  Escenario: Solucion
    Dado unas credenciales para el voicemail
    Cuando exploro todas las opciones del voicemail
    Y encuentro que existe un mensaje de voz archivado
    Y logo descargarlo
    Y lo escucho
    Entonces encuentro el usuario support y la contraseña requerida para solucionar el reto
