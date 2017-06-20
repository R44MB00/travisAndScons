# language: es

Característica: Resolver reto crypto - 10
  Del sitio http://www.dareyourmind.net/menu.php?page=crypto10
  De la categoría crypto
  Con mi usuario ErisoHV
  
  Antecedentes:
    Dado que accedo al sitio del reto http://www.dareyourmind.net/menu.php?page=crypto10
    Y tengo el sistema operativo Linux Mint 18
    Y tengo instalado el software Chromium versión 55.0.2883.87
    Y tengo acceso a internet
    Y he resuelto el reto crypto - 10
  
  Escenario: Primer intento fallido
    Dado que estoy en el sitio del reto http://www.dareyourmind.net/menu.php?page=crypto10
    Y he observado la imagen
    Y me concentro en el reflector de la imagen
    Y cuento las rendijas del reflector
    Cuando ingreso el numero de rendijas 5
    Entonces el resultado es erróneo
    Pero concluyo que debo revisar la imagen más a fondo para buscar un código oculto
    
  Escenario: Solución exitosa
    Dado que estoy en el sitio del reto http://www.dareyourmind.net/menu.php?page=crypto10
    Y he encontrado un código en clave Morse en la imagen
    Entonces busco un traductor Morse online
    Y traduzco la clave Morse de la imagen
    Cuando ingreso la respuesta en el sitio del reto
    Entonces resuelvo el reto
