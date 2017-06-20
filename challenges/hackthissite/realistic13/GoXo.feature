# language: es

Característica: resolver reto 13
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano el cracker Cain & Abel versión 4.9.43
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido
    Dado un sitio web de unas elecciones de una nación
    Cuando investigo y recopilo toda la información necesaria de este sitio web
    Y las siguientes páginas son vulnerables: News,Mailing List,Speeches,Press
    Y me muestran un errores cuando ingreso parámetros erroneos
    Y recopilo e integro todos los errores
    Y también encuentro en uno de los errores un código php que busca una url
    Y la url es la concatenación de una fichero
    Y la url es speeches/passwords/7e40c181f9221f9c613adf8bb8136ea8/
    Y 7e40c181f9221f9c613adf8bb8136ea8 es el md5 de 'Speeches'
    Entonces me doy cuenta que existe una página para ingresar como admin
    Y hashes md5 de credenciales con contraseñas
    Pero no resuelvo reto

  Escenario: Último intento fallido
    Dada una página para ingresar como administrador llamada /admin
    Y unas credenciales en hash md5
    Cuando descifro las crendenciales md5 utilizando Caín
    Entonces encuentro su valor original moni1:admin
    Pero ninguna combinación es aceptada por la página /admin

  Escenario: Solución exitosa
    Dada una recopilación de los errores producidos en la primera búsqueda
    Cuando observo bien los errores
    Y veo que existe otra página para logearse como administrador
    Y esta es /21232f297a57a5a743894a0e4a801fc3/
    Entonces ingreso las credenciales moni1:admin en esta nueva página
    Y podré resolver este reto

