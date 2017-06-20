# language: es

Característica: Resolver reto F|nd y0ur w4y
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto F|nd y0ur w4y

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar al reto
    Y solicita un usuario secreto
    Y no lo conozco
    Entonces no resuelvo el reto
    Pero concluyo que debo analizar el código fuente

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando analizo el código fuente
    Y encuentró la página a la que ingresa al resolver el reto
    Y pego esa página en mi navegador
    Entonces resuelvo el reto sin ingresar el usuario
