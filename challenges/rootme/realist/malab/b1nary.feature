# language: es

Característica: resolver reto realistic
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web simple
    Y he resuelto retos de web server
    
  Escenario: Primer intento fallido
    Dada una url
    Cuando veo el parámetro id en la url
    Y intento técnicas básicas de blind sql injection
    Y intento técnicas básicas de local file inclusion
    Entonces no soluciono el reto
    Pero concluyo que debo buscar otro método para atacar
    
  Escenario: Encontrando la vulnerabilidad
    Dada una url
    Cuando ingreso a la sección de miembros
    Y selecciono algún miembro
    Y veo que hay varios parámetros que hacen referencia a la información del usuario
    Y en el parámetro id intentó probar añadiendo " or 1=2"
    Entonces veo que es vulnerable a inyección sql
    
  Escenario: Segundo intento fallido
    Dada una página web vulnerable a inyección sql
    Cuando intento explotarla buscando la contraseña del administrador en la tabla user
    Y veo siempre sale error
    Entonces no soluciono el reto
    Pero concluyó que debe obtener primero el nombre de las tablas y columnas
    
  Escenario: Obteniendo la contraseña del administrador
    Dada una página web vulnerable a inyección sql
    Cuando agrego " union select pass,2,3 from users where id=1" donde el id del admin es 1
    Y veo un hash de la contraseña
    Y utilizó una herramienta online para obtener el valor del hash
    Entonces puedo acceder como administrador a la página web
    
  Escenario: Tercer intento fallido
    Dado un acceso a una página web como administrador
    Cuando veo la seccion de upload files
    Y intento subir el archivo shell.php
    Y veo que el sistema no permite subir archivos .php solo archivos de imágenes como png y jpg
    Entonces no soluciono el reto
    Pero concluyó que debo atacar de otra manera
    
  Escenario: Cuarto intento fallido
    Dada una pagina para subir archivos
    Cuando leo nuevamente la descripción del reto
    Y veo que se requiere borrar un archivo
    Y intento subir un archivo con el nombre "*"
    Y veo que no genera ningún error
    Entonces no soluciono el reto
    Pero concluyo que debo volver a intentar subir un shell
    
  Escenario: Solucion
    Dada una pagina para subir archivos
    Cuando intento subir un archivo con el nombre "shell.php.jpg"
    Y veo que es aceptado por el sistema
    Y accede al sitio donde fue guardado
    Entonces obtengo la solución del reto
