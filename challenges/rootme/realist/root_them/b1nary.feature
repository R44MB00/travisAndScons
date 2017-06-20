# language: es

Característica: resolver reto
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado una maquina virtual en una dirección dns
    Y mis conocimientos adquiridos en retos previos
    Y tengo instalado el kali linux 2.0
    
  Escenario: Explorando la máquina virtual
    Dado una máquina en una dirección dns
    Cuando hago nmap sobre la ip que apunta a el dns dado
    Y cuando accedo al puerto 80 de la máquina utilizando el navegador web
    Entonces puedo ver diferentes servicios que me permiten saber qué está haciendo la máquina

  Escenario: Primer intento fallido
    Dada una pagina web
    Cuando intento probar inyecciones sql en algunas sub urls de la página
    Y no veo errores
    Entonces no resuelvo el reto
    Pero concluyó que puede haber otro camino o la inyección sql es más avanzada

  Escenario: Buscando vulnerabilidades
    Dada una pagina web
    Cuando veo que en una sección de la página llamada blog utiliza el CMS NanoCMS
    Y busco en google exploits para NanoCMS
    Y encuentro uno en el que es posible ver un archivo de configuración sin autorización
    Y veo que este tiene el usuario y contraseña para administrar el CMS
    Entonces logró obtener las credenciales de administrador del CMS

  Escenario: Creando un shell remoto
    Dada una pagina con unas credenciales de administrador
    Cuando ingreso al panel de administrador
    Y veo que puedo crear nuevos archivos php
    Entonces creo un shell interactivo en php
 
  Escenario: Segundo intento fallido
    Dado un shell interactivo en la página
    Cuando exploro archivos
    Y busco el archivo passwd
    Y no veo respuesta en el shell
    Y verifico los permisos de passwd
    Y veo que solo root puede leer el archivo passwd
    Entonces no resuelvo el reto
    Pero concluyó que debo escalar privilegios

  Escenario: Escalando privilegios
    Dado un shell interactivo en la página
    Cuando exploro comandos
    Y encuentro que la version de linux de la maquina es 2.6.23.1-42.fc8
    Y busco exploits de escalación de privilegios
    Y encuentro uno
    Entonces creo el archivo en el directorio /tmp para compilarlo

   Escenario: Tercer intento fallido
     Dado un shell en la página web
     Cuando intento compilar el exploit
     Y intento ejecutarlo
     Y veo que no genera error pero tampoco hace nada
     Entonces no resuelvo el reto
     Pero concluyó que es necesario un reverse tcp shell o acceso por ssh
     
   Escenario: Cuarto intento fallido
     Dado un shell en la página web
     Cuando intento crear un reverse tcp shell con nc,python,bash
     Y veo que ninguno funciona
     Entonces no resuelvo el reto
     Pero concluyó que el servidor puede estar bloqueando las conexiones o tengo bloqueados los puertos
     
   Escenario: Obteniendo un reverse tcp shell
     Dado un shell en la página web
     Cuando utilizo los comandos de bash para crear un reverse tcp shell
     Y logro configurar mis puertos para que se pueda entablar la conexión
     Entonces logró obtener un shell en mi computador
     
   Escenario: Solucion
     Dado un shell
     Cuando ejecuto el exploit previamente compilado
     Y inmediatamente veo que obtengo el usuario root
     Y leo el archivo /passwd con cat
     Y leo el archivo /etc/shadow
     Entonces logró obtener el hash del usuario root y el flag para solucionar el reto
