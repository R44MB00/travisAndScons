#language: es

  Característica: Resolver reto 148
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una secuencia de imágenes
    Y se pide encontrar el mensaje que representán
    Cuando analizo las imágenes
    Y me doy cuenta que son jeroglíficos egipcios
	Y busco la equivalencia de cada imagen a letras del idioma ingles
    Cuando hago la traducción respectiva
    Y encuentro que las dos primeras palabras son mision troja
    Y la última puede ser ul o wl
    Cuando escribo la frase
    Y pruebo las dos combinaciones
    Entonces no resuelvo el reto
    Pero concluyo que debo analizar más el reto

  Escenario: Último intento fallido
    Dada una secuencia de imágenes
    Y se pide encontrar el mensaje que representán
    Y una pista que dice que debo corregir lo necesario
    Cuando analizo las imágenes
    Y me doy cuenta que son jeroglíficos egipcios
    Y busco la equivalencia de cada imagen a letras del idioma ingles
    Cuando hago la traducción respectiva
    Y encuentro que las dos primeras palabras son mision troja
    Y la última puede ser ul o wl
    Cuando corrigo la palabra troja por troya
    Y escribo la frase con sus dos posibles combinaciones
    Entonces no resuelvo el reto
    Pero concluyo que las correcciones tambien son ortográficas

  Escenario: Solución exitosa
    Dada una secuencia de imágenes
    Y se pide encontrar el mensaje que representán
    Y una pista que dice que debo corregir lo necesario
    Cuando analizo las imágenes
    Y me doy cuenta que son jeroglíficos egipcios
	Y busco la equivalencia de cada imagen a letras del idioma ingles
    Cuando hago la traducción respectiva
    Y encuentro que las dos primeras palabras son mision troja
    Y la última puede ser ul o wl
    Cuando corrigo las palabras mision troja por misión troya
    Y escribo la frase con sus dos posibles combinaciones
    Entonces resuelvo el reto
