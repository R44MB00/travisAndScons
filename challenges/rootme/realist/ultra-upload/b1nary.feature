# language: es

Característica: obtener acceso al sitio de administrador
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web
    Y he resuelto retos de web server
    
  Escenario: Primer intento fallido
    Dada una url
    Cuando intento subir un shell php
    Y veo que se sube correctamente
    Y intento acceder al shell
    Y veo que no se ejecuta sino que solo se muestra el contenido
    Entonces no resuelvo el reto
    Pero concluyo que debo buscar otra forma de ejecutar comandos

  Escenario: Creando un payload
    Dada una url
    Cuando veo en la página principal un link que menciona un script que se ejecuta
    Y puedo acceder al código fuente de este código
    Y veo que este código utiliza tar sobre el directorio donde se suben los archivos
    Y consulto los comandos y vulnerabilidades de tar
    Entonces comprendo que debo crear un payload con los nombres de los archivos y un archivo sh

  Escenario: Segundo intento fallido
    Dada una url
    Cuando subo los archivos necesarios
    Y dentro del script sh intentó obtener el contenido de /etc/passwd
    Entonces no resuelvo el reto
    Pero concluyo que debo leer el código fuente del sitio

  Escenario: Solución
    Dada una url
    Cuando actualizo el script sh para leer el archivo en admin/index.php
    Y veo el contenido de este
    Y veo la contraseña
    Entonces logró solucionar el reto
