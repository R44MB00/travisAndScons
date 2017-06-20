# language: es

Característica: resolver reto 19
  Sin utilización de código
  Del sitio ae27ff
  De la categoría Cryptography
  Con mi usuario GoSo

  Antecedentes:
    Dado que estoy Registrado en el sitio ae27ff - http://mirror.otp22.com
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano un decodificador de Base32
    Y se encuentra en https://emn178.github.io/online-tools/base32_decode.html
    Y tengo a la mano un decodificador de cifrado por desplazamiento (rot)
    Y se encuentra en http://www.xarg.org/tools/caesar-cipher/
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado un video mostrando colores y nombres de colores
    Y el código fuente de la página con varias pistas
    Cuando examino el video en busca de mas pistas
    Y se intenta ingresar cada color como solución
    Entonces no encuentro ninguna indicación de la solución
    Pero concluyo que la solución es mas complicada

  Escenario: Último intento fallido
    Dado un video mostrando colores y nombres de colores
    Y una de las pistas encriptada con Base32
    Cuando intento descifrar la pista
    Entonces me salen caracteres extraños
    Y no paso el reto
    Pero me doy cuenta de la posible utilizacion de un cifrado rot a la pista

  Escenario: Solución exitosa
    Dada una pista cifrada con Base32 y rot
    Cuando utilizo todos los 26 rot posibles a la pista
    Y descifro cada una de los textos del rot con Base32
    Entonces descifro la pista
    Y esta sugiere que la solución sea el color menos y más frecuente del video
    Y busco en el video el color más frecuente y el menos frecuente
    Entonces la solución es el color menos frecuente seguido del más frecuente
