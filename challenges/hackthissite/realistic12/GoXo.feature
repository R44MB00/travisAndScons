# language: es

Característica: resolver reto 12
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido
    Dado un sitio web montado con Perl
    Cuando exploro todo el sitio en busca de vulnerabilidades
    Y me doy cuenta de que existen dos formularios vulnerables
    Y uno es para buscar direcciones URL
    Entonces ingreso una comilla en la dirección URL
    Y veo que sale un error que se podría explotar
    Y no resuelvo el reto
    Pero el reto me dice que el sitio web esta montado en un windows antiguo

  Escenario: Último intento fallido
    Dado un sitio web con un formulario vulnerable
    Y el sitio esta montando en un windows antiguo
    Cuando utilizo como parametro: file://C: (como en windows) en el formulario
    Entonces veo que se me despliega el indice de un directorio
    Y encuentro la página del admin en file://C:/WEB/HTML
    Y esta se llama heartlandadminpanel.html
    Pero no logro ingresar como administrador porque no tengo las credenciales

  Escenario: Solución exitosa
    Dado un sitio web con dos formularios vulnerables
    Y una página de administrador
    Cuando me dirijo al segundo formulario vulnerable, el cual es un guestbook
    Y este se encuentra en la página de uno de los estudiantes
    Y veo que este recibe y guarda textos en un guestbook.txt
    Y veo que se puede leer con los parametros: action=read
    Y file=guestbook.txt
    Entonces puedo explotar el parámetro file, para leer un archivo del sitio
    Y despues de muchos intentos encuentro el parámetro correcto
    Y este parametro es: file=heartlandadminpanel.pl
    Y este parámetro me da las credenciales del administrador
    Entonces con las credenciales puedo entrar como administrador
    Y resolver el reto
