#language: es

  Característica: Resolver reto 151
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Y busco una herramienta online para descifrarlo
    Entonces no resuelvo el reto
    Pero concluyo que debo aprender más sobre ese cifrado

  Escenario: Segundo intento fallido
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Y consulto sobre ese tipo de encriptación
    Y me doy cuenta que usa dos discos, uno interior
    Y otro exterior
    Y esos discos solo usan 24 caracteres
    Y ademas, no contienen todas las letras del abecedario
    Y ademas el disco interior es rotable
    Y por tanto el mensaje puede ser encriptado en 24 maneras
    Cuando busco en internet una herramienta
    Y esa herramienta me permite descifrar el mensaje usando todas las posibles combinaciones
    Entonces no resuelvo el reto
    Pero concluyo que debo aprender aún más sobre ese cifrado

  Escenario: Tercer intento fallido
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Y busco más información sobre el cifrado
    Y me doy cuenta que algunas veces este usa dos alfabetos
    Cuando busco en internet los alfabetos más probables de cifrado
    Y usandolos descifro el mensaje
    Entonces no resuelvo el reto
    Pero concluyo que tal vez usando todo el abecedario soluciono el reto

  Escenario: Cuarto intento fallido
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Cuando construyo una tabla
    Y hago coincidir cada letra del abecedario con su posible valor en el cifrado
    Y desencripto el mensaje usando la tabla
    Entonces no resuelvo el reto
    Pero concluyo que debo intentar algo diferente

  Escenario: Quinto intento fallido
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Y busco un metodo para desencriptar manúalmente un cifrado polialfabetico
    Y encuentro que usando el metodo kasiski podría ser posible
    Cuando aplico los pasos del metodo kasiski contra el mensaje cifrado
    Entonces no resuelvo el reto
    Pero concluyo que debo buscar algo distinto

  Escenario: Último intento fallido
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Cuando observo el mensaje encriptado
    Y encuentro que hay un patron coincidente entre dos palabras
    Y ese patron es que las dos palabras tienen las mismas letras en diferente orden
    Y determino que las unicas palabras que cumplen esa condición son pasado y password
    Cuando reemplazo las letras coincidentes en el resto del mensaje
    Y obtengo la frase reto pasado password
    Y no logro completar la última palabra
    Entonces no resuelvo el reto
    Pero concluyo que debo usar el alfabeto alberti para descifrarlo

  Escenario: Solución exitosa
    Dado un texto encriptado
    Y el nombre del reto como pista
    Cuando investigo sobre métodos de cifrado clasico
    Y encuentro que el cifrado alberti coincide con la pista proporcionada
    Cuando observo el mensaje encriptado
    Y encuentro que hay un patron coincidente entre dos palabras
    Y ese patron es que las dos palabras tienen las mismas letras en diferente orden
    Y determino que las unicas palabras que cumplen esa condición son pasado y password
    Cuando reemplazo las letras coincidentes en el resto del mensaje
    Y obtengo la frase reto pasado password
    Cuando uso el alfabeto alberti para descifrar la última palabra
    Entonces resuelvo el reto
