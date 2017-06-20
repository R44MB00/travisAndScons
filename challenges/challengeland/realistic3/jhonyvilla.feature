#language: es

  Característica: Resolver reto Realistic 3
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo la extención EditThisCookie instalada

  Escenario: Intento fallido
    Dada una página web con un formulario
    Cuando veo el código fuente de esta
    Y encuentro varios link a diferentes páginas
    Y veo que todas tienen el mismo mensaje en arabe
    Y traduzco ese mensaje
    Y me parece poco relevante
    Cuando vuelvo a la página inicial
    Y me centro en el formulario
    Cuando detallo mejor el código del formulario
    Y veo que el campo password tiene por propiedad require
    Y uso la herramienta inspeccionar del navegador para quitarle esa propiedad
    Y despues intento hacer SQLi en el formulario
    Entonces no resuelvo el reto
    Pero concluyo que debo probar otra cosa

  Escenario: Solución exitosa
    Dada una página web con un formulario
    Cuando reviso las cookies
    Y encuentro una llamada enable referente al reto
    Y cambio el valor de la cookie
    Y recargo la página
    Y veo que al parecer nada cambió
    Cuando reviso el código fuente de nuevo al igual que sus enlaces
    Y uno de esos enlaces abre una página de registro
    Y me registro en ella. Soy redirigido a la página inicial
    Cuando me logeo usando el usuario creado
    Y carga una página totalmente en blanco
    Y reviso nuevamente las coockies
    Y veo una coockie con el nombre de sesión con un valor encriptado
    Y desencripto el valor
    Y veo que es mi nombre de usuario decido cambiarlo por admin
    Cuando encripto la palabra admin
    Y la uso como nuevo valor de la coockie
    Y recargo la página en blanco
    Entonces resuelvo el reto
