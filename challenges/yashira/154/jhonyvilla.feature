#language: es

  Característica: Resolver reto 154
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado un texto encriptado
    Y la llave RETO
    Y el título geometria analitica como pista
    Cuando identifico que el texto fue cifrado por transposición
    Y consulto sobre estos métodos de cifrado
    Y encuentro que el cifrado trasnposición por ruta hace referencia a la pista
    Cuando construyo la figura geométrica con el texto
    Y trato de descifrarlo usando todas las rutas posibles
    Entonces no resuelvo el reto
    Pero concluyo que tal vez ese no sea el metodo de cifrado

  Escenario: Segundo intento fallido
    Dado un texto encriptado
    Y la llave RETO
    Y el título geometria analitica como pista
    Cuando identifico que el texto fue cifrado por transposición
    Y consulto sobre estos métodos de cifrado
    Y encuentro que el cifrado trasnposición columnar hace uso de una llave
    Cuando construyo la tabla usando la llave como referencia
    Y trato de descifrarlo intercambiando las columnas
    Entonces no resuelvo el reto

  Escenario: Último intento fallido
    Dado un texto encriptado
    Y la llave RETO
    Y el título geometria analitica como pista
    Cuando identifico que el texto fue cifrado por transposición
    Y busco una herramienta online para descifrarlo por fuerza bruta
    Entonces no resuelvo el reto

  Escenario: Solución exitosa
    Dado un texto encriptado
    Y la llave RETO
    Y el título geometria analitica como pista
    Cuando identifico que el texto fue cifrado por transposición
    Y consulto sobre estos métodos de cifrado
    Y encuentro que el cifrado trasnposición columnar hace uso de una llave
    Cuando construyo la tabla usando la llave como referencia
    Y analizo el patrón de las letras
    Y encuentro que la palabra el password se forma usando el patron de llave TROE
    Cuando sigo ese patrón
    Y descifro el mensaje
    Entonces resuelvo el reto
