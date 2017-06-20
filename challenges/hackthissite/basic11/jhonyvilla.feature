#language: es

  Característica: Resolver reto basic 11
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dada una pagina web que carga un mensaje sobre música
    Cuando examino el código fuente
    Y no encuentro nada
    Y entonces reviso las cookies del sitio
    Y no encuentro nada
    Y trato de listar los directorios
    Y no lo consigo
    Entonces no resuelvo el reto
    Pero concluyo que la solución puede estar en el mensaje

  Escenario: Solución exitosa
    Dada una pagina web que carga un mensaje sobre música
    Y recargo la página para ver si el mensaje cambia
    Y en efecto lo hace
    Y descubro que cada cambio es el nombre de una canción
    Y busco en google que tienen en común esas canciones
    Y descubro que el cantante es Elton John
    Cuando uso la inicial del nombre en la url
    Y me muestra un listado de directorios
    Y accedo a cada uno de los directorios mostrados hasta el final
    Cuando busco el archivo .htaccess
    Y veo una instrucción con el nombre de un archivo
    Y accedo a ese archivo
    Y me muestra el mensaje "The answer is somewhere close! Just look a little harder"
    Cuando vuelvo a la raíz del reto
    Y abro el index.php
    Y pongo la respuesta
    Entonces resuelvo el reto
