# language: es

Característica: resolver reto 4
  Sin utilización de código
  Del sitio ChallengeLand
  De la categoría Steganography
  Con mi usuario Goso_Gos

  Antecedentes:
    Dado que estoy Registrado en el sitio ChallengeLand.co
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano el software Stegsolve.jar versión 1.3 (java)
    Y he instalado el software foremost versión 1.5.7
    Y he instalado el software 010Editor versión 4.0 con wine versión 1.5
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una imagen tipo .jpeg
    Cuando examino la imagen con Stegsolve.jar
    Y cambio los filtros de la imagen para detallar algún mensaje escondido
    Entonces no encuentro ninguna indicación de una edición a la imagen
    Pero concluyo que probablemente el mensaje está en los datos HEX

  Escenario: Último intento fallido
    Dada una imagen tipo .jpeg
    Cuando examino esta imagen con el software foremost
    Y utilizo el comando: foremost -i image4.jpg -o out
    Y veo que en la carpeta out la misma imagen pero de un tamaño mas reducido
    Entonces no resuelvo el reto
    Pero concluyo que la imagen original contiene datos Hexadecimales de más

  Escenario: Solución exitosa
    Dadas dos imagenes tipo .jpeg: la original y la extraída con foremost
    Cuando comparo con el editor hexadecimal 010 Editor las dos imágenes
    Y veo que en la imagen original hay un bloque de información en hexadecimal
    Y este bloque no está en la imagen extraída
    Y busco por palabras legibles en este bloque de información
    Entonces encontraré la solución de este reto
