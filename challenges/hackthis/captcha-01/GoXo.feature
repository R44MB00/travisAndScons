# language: es

Característica: resolver reto 1
  Con código en python
  Del sitio Hackthis
  De la categoría Captcha
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio ChallengeLand.co
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano python versión 2.7
    Y he instalado el paquete ImageEnhance de python
    Y he instalado el paquete PIL de python
    Y he instalado el paquete pytesser de python
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado un captcha alfanúmerico
    Cuando implemento pytesser directamente en la imagen
    Y no paso la imagen por ningún filtro
    Entonces el texto del captcha no es tan exacto
    Y no podré pasar el reto
    Pero concluyo que debo hacerle un tratamiento a la imagen antes de pytesser

  Escenario: Último intento fallido
    Dado un captcha alfanúmerico
    Cuando paso la imagen del captcha por filtros de contraste, brillo, y color
    Y paso la imagen a blanco y negro
    Y la guardo en un formato mas legible para el pytesser
    Entonces el error del pytesser disminuye bastante al pasar la imagen a texto
    Y no puedo pasar el reto
    Pero concluyo que debo implementar un ciclo infinito con muchos intentos
    Y por probabilidad el resultado dará eventualmente

  Escenario: Solución exitosa
    Dado un captcha alfanúmerico tratado exitosamente por varios filtros
    Cuando utilizo un bucle infinito que intente resolver cada nuevo captcha
    Y por probabilidad uno de los captchas me debe dar correcto
    Entonces eventualmente solucionaré este reto (Ver código en GoXo.asc)
