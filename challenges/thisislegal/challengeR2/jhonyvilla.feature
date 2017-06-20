#language: es

  Característica: Resolver reto Realistic 2
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un sitio web de una religión rara
    Y se pide encontrar un archivo con determinados datos
    Y se pide eliminar ese archivo al igual que la evidencia de navegación
    Cuando veo el codigo fuente del index
    Y veo que hay varias páginas entre ellas login.php
    Y abro esa pagina veo que requiere user y pass
    Y hago una SQLi basica en el campo user
    Entonces no resuelvo el reto
    Pero sale un mensaje de que voy bien
    Y por tanto concluyo que debo modificar un poco la inyección

  Escenario: Solución exitosa
    Dado un sitio web de una religión rara
    Y se pide encontrar un archivo con determinados datos
    Y se pide eliminar ese archivo al igual que la evidencia de navegación
    Cuando voy a la pagina login.php
    Y hago una SQLi basica en el campo user
    Y agrego lineas de comentario al final de la SQLi admin' or 1=1--a
    Entonces me logeo como admin
    Pero la cuenta está limitada
    Cuando veo que se puede ver el backup de la base de datos
    Y hay un usuario 'SuperAdmin' con contraseña encriptada
    Y desencripto la contraseña
    Y me logeo usando las nuevas credenciales
    Y puedo ver los archivos del sitio web
    Y elimino lo que hay que eliminar
    Entonces resuelvo el reto
