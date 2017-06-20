#language: es

  Característica: Resolver reto 16
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una página html
    Y se pide encontrar la linea de código innecesaria
    Cuando analizo el código fuente de la página
    Y encuentro que la linea correspondiente a la etiqueta <table> hace referencia a la propiedad background
    Y el recurso de esa propiedad no existe
    Cuando elimino esa propiedad
    Y doy por respuesta la linea corregida
    Entonces no resuelvo el reto
    Pero concluyo que debo inspeccionar otras lineas

  Escenario: Último intento fallido
    Dada una página html
    Y se pide encontrar la linea de código innecesaria
    Cuando analizo el código fuente de la página
    Y me doy cuenta que hay una linea mal estructurada
    Y esa estructuración corresponde a las etiquetas <font><div></div></font>
    Y sé que una etiqueta div no puede estar dentro de una etiqueta font
    Cuando hago la corrección debida
    Y esa correción es reordenar las etiquetas <di><font></font><div>
    Y doy por respuesta la linea corregida
    Entonces no resuelvo el reto
    Pero concluyo que debo inspeccionar otras lineas

  Escenario: Solución exitosa
    Dada una página html
    Y se pide encontrar la linea de código innecesaria
    Cuando analizo el código fuente de la página
    Y me doy cuenta que la linea correspondiente a la etiqueta <hr> tiene una propiedad invalida
    Y elimino esa propiedad
    Entonces  resuelvo el reto
