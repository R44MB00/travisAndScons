#language: es

  Característica: Resolver reto basic 8
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dada una pagina web se pide encontrar una contraseña
    Y esa contraseña está almacenada en un archivo en determinada ruta
    Y la página tiene un script en php que al ejecutarlo crea una archivo shtml
    Cuando busco información de ese tipo de archivos
    Y descubro que son vulnerables a ssi injection
    Y estudio sobre esa temática
    Cuando inyecto la instrucción <!--#exec cmd="ls" -->
    Y obtengo una lista de varios archivos
    Y descubro que esos archivos no son utiles
    Entonces no resuelvo el reto
    Pero concluyo que debo especificar más la instrucción

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Y esa contraseña está almacenada en un archivo en determinada ruta
    Y la página tiene un script en php que al ejecutarlo crea una archivo shtml
    Y por tanto es vulnerable a SSI injection
    Cuando inyecto la instrucción <!--#exec cmd="ls ../" -->
    Y obtengo el nombre de un archivo .php
    Y accedo a ese archivo
    Entonces resuelvo el reto
