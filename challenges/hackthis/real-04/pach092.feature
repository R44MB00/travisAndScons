# language: es

Característica: Resolver reto 4
  Del sitio hackthis
  De la categoría Real
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Real 4

  Escenario: Solución fallida
    Dado un enlace para entrar a 4 sitios distintos
    Entonces la página de las contraseñas
    Y pruebo con cada una de las contraseñas en la página del correo
    Entonces no resuelvo el reto
    Pero concluyo que esas contraseñas sirven para otra página del reto

  Escenario: Solución fallida
    Dado un ingreso exitoso en una página como administrador
    Entonces revisando las tablas de usuarios apuestas
    Entonces encuentro al usuario en una transacción
    Entonces intento ingresar a sus correos con la página de contraseñas
    Entonces no resuelvo el reto
    Pero concluyo que puedo ingresar por inyección de SQL

  Escenario: Solución exitosa
    Dado una página de correos
    Entonces realizo inyección de SQL
    Y no obtengo resultado
    Entonces realizo la inyección SQL en la página de apuestas
    Y observo las contraseñas de los usuarios de la página en MD5
    Entonces con una herramienta en línea descifro la contraseña
    Entonces ingreso al correo con la contraseña
    Y en la página de compras pido un recordatorio de contraseña
    Entonces copio la contraseña enviada al correo
    Y realizo la transferencia a la cuenta indicada
    Entonces resuelvo el reto

