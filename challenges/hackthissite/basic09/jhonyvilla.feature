#language: es

  Característica: Resolver reto basic 9
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y he resuelto el reto basic 8 del sitio

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Y esa contraseña está almacenada en un archivo en determinada ruta
    Y se indica que se puede acceder a él desde el script vulnerable del reto 8
    Cuando inyecto la instrucción <!--#exec cmd="ls ../../9" -->
    Y obtengo el nombre de un archivo .php
    Y accedo a ese archivo
    Entonces resuelvo el reto
