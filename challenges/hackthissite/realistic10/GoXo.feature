# language: es

Característica: resolver reto 10
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano un plugin para editar cookies
    Y tengo a la mano un plugin para modificar "user agents"
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido
    Dado un sitio web de un colegio
    Cuando miro el código fuente
    Y miro toda el sitio en busca de información
    Y puedo ingresar como estudiante
    Y veo que todos los datos se validan via POST en la URL 
    Y veo una página sospechosa en el código fuente: staff.php
    Y veo que es el formulario para ingresar como profesor
    Entonces intento todas las inyecciones SQL posibles
    Y no puedo entrar
    Pero investigo la pagina mas a profundidad
    

  Escenario: Segundo intento fallido
    Dado un sitio web de un colegio
    Y una página del sitio web donde puedo ver el perfil de los profesores
    Y veo que el perfil depende de la variable id
    Y si pongo .php?id[]=' siempre me mostrara el profesor Samantha Miller
    Y veo el correo de esta profesora es bastante sospechoso: smiller
    Y me atrevo a ingresar con este nombre de usuario y contraseña en staff.php
    Entonces logro ingresar como la profesora
    Pero el acceso es restringido a 'holy_teacher' en el navegador


  Escenario: Último intento fallido
    Dado un ingreso exitoso como profesor a la plataforma del colegio
    Y tengo a la mano un plugin para modificar el 'user agent'
    Y creo un user agent con todos los campos en 'holy_teacher'
    Y la restricción de seguridad desaparece y logro ingresar completamente
    Pero aparece una nueva restricción para administrador
    Cuando veo la utilizacion de una cookie para administrador con valor a 0
    Entonces cambio es valor a 1 con un editor de cookies
    Y logro ingresar como administrador
    Pero no puedo actualizar las notas debido a una restricción de tiempo


  Escenario: Solución exitosa
    Dado un ingreso exitoso como profesor y administrador
    Y veo el código fuente para cambiar las notas
    Y percato que los botones fueron desactivados con comentarios
    Cuando veo la dirección para postear las notas
    Y va asi staff.php?action=changegrades&changeaction=modrec&rec=4&studentid=1
    Y simplemente le agrego el parámetro &grade=5
    Y cambio los rec que van de 0 a 9, los cuale son las materias
    Entonces podré actualizar las notas de todas las materias
    Y podré solucionar este reto
    
    
    

