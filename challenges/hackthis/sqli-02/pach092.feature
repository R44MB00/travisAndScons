# language: es

Característica: Resolver reto 2
  Del sitio hackthis
  De la categoría SQLi
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto SQLi 2

  Escenario: Solución fallida
    Dado un botón para navegar por los miembros
    Entonces escojo uno de los miembros que aparecen ahí
    Y lo copio en el campo usuarios
    Entonces realizo una inyección de SQL en el campo contraseña
    Entonces no resuelvo el reto
    Pero concluyo que no todos los usuarios son administradores

  Escenario: Solución fallida
    Dado un formulario para ingresar usuarios y contraseñas
    Entonces realizo una inyección en el campo usuario
    Y realizo la misma inyección en el campo contraseña
    Entonces no resuelvo el reto
    Pero concluyo que la inyección se realiza en la barra de direcciones

  Escenario: Solución fallida
    Dado una consulta SQL en la barra de direcciones
    Entonces realizo una consulta para saber quién es el administrador
    Y me arroja un resultado
    Entonces realizo otra consulta para saber la contraseña de administrador
    Entonces copio la contraseña mostrada
    Entonces no resuelvo el reto
    Pero concluyo que la contraseña está cifrada

  Escenario: Solución exitosa
    Dado una consulta SQL en la barra de direcciones
    Entonces realizo una consulta para saber quién es el administrador
    Y me arroja un resultado
    Entonces realizo otra consulta para saber la contraseña de administrador
    Entonces copio la contraseña mostrada
    Entonces uso una herramienta online para crackearla
    Y copio la contraseña
    Entonces resuelvo el reto
