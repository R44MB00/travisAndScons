#language: es

  Característica: Resolver reto Realistic 1
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dada una página web
    Cuando veo el código fuente de esta
    Y encuentro solo una imagen
    Y veo si puedo listar los directorios de esa imagen
    Y encuentro una carpeta
    Cuando la abro me sale un error undefined index
    Cuando busco información en internet sobre ese error
    Y me doy cuenta que se debe a que una variable requiere un valor
    Y cargo el index.php dandole a la variable por valor 0
    Y me sale un mensaje en japones
    Cuando traduzco ese mensaje
    Y no dice nada relevante pruebo con otro número en la variable
    Y repito los tres últimos pasos hasta que sale un mensaje significativo
    Cuando veo que ese mensaje se refiere a los archivos .htaccess y .htpasswd
    Y trato de ingresar a ellos usando diferentes métodos
    Entonces no resuelvo el reto
    Pero concluyo que esos archivos son irrelevantes

  Escenario: Solución exitosa
    Dado un sitio web
    Cuando veo el código fuente de este
    Y encuentro solo una imagen
    Y veo si puedo listar los directorios de esa imagen
    Y encuentro una carpeta
    Y cuando la abro me sale un error undefined index
    Y cargo el index.php dandole a la variable otro valor a los ya usados
    Y me sale un mensaje en japones
    Cuando traduzco ese mensaje
    Y no dice nada relevante pruebo con otro número en la variable
    Y repito los tres últimos pasos hasta que sale un mensaje significativo
    Cuando veo que es un usuario y contraseña
    Y busco donde debo ingresar esa autenticación
    Cuando miro la url de la página que contiene la imagen
    Y veo que esta solicita el index a traves de una variable
    Y cambio el valor de la variable por admin
    Y veo como, por unos segundos, muestra una página con un formulario
    Y concluyo que hay alguna función javascript que no la deja estar
    Cuando desactivo javascript
    Y recargo la página del formulario
    Y uso los datos encontrados previamente
    Entonces resuelvo el reto
