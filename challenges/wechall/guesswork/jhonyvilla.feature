#language: es

  Característica: Resolver reto Guesswork
    Del sitio wechall.net
    De la categoría exploit
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una pagina con varios mensajes tipo pregunta y respuesta
    Y se pide encontrar el password del usuario wechall
    Cuando miro que el primer mensaje menciona scripts inseguros
    Y busco en el código fuente algo que compruebe esa pregunta
    Entonces no resuelvo el reto
    Pero concluyo que talvez la respuesta está en otro de los mensajes

  Escenario: Último intento fallido
    Dada una pagina con varios mensajes tipo pregunta y respuesta
    Y se pide encontrar el password del usuario wechall
    Cuando miro que el segundo mensaje menciona que el password es fácil
    Y que puede estar relacionado con el usuario
    Y concluyo que el password podria ser el mismo nombre de usuario
    Entonces no resuelvo el reto
    Pero me sale un mensaje diciendome que estoy cerca
    Entonces concluyo que la respuesta es el password que acabé de usar mas otra cosa

  Escenario: Solución exitosa
    Dada una pagina con varios mensajes tipo pregunta y respuesta
    Y se pide encontrar el password del usuario wechall
    Cuando miro que el segundo mensaje menciona que el password es fácil
    Y que puede estar relacionado con el usuario
    Y ademas el mensaje dice que el usuario no es legitimo es decir un bot
    Y le adiciono la palabra "bot" a la contraseña
    Entonces resuelvo el reto
