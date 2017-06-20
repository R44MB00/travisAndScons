#language: es

  Característica: Resolver reto 254
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Matriux en su versión Leandros
    Y tengo acceso a internet
    Y tengo truecrypt instalado
    Y tengo truecrack instalado

  Escenario: Primer intento fallido
    Dado un archivo con extensión .tc
    Cuando busco información sobre ese archivo
    Y encuentro que es una imagen de disco cifrada
    Cuando busco un programa para abrir la imagen
    Y ese software es truecrypt
    Y me pide una contraseña para poder acceder a él
    Entonces no resuelvo el reto
    Pero concluyo que debo buscar la manera de averiguar la contraseña

  Escenario: Segundo intento fallido
    Dado un archivo con extensión .tc protegido por contraseña
    Cuando busco información sobre como averiguar la contraseña
    Y encuentro que el programa truecrack me sirve para eso
    Cuando descargo e instalo el programa
    Y trato un ataque por diccionario usando los archivos proporcionados por él
    Entonces no resuelvo el reto
    Pero concluyo que debo buscar un diccionario mas potente

  Escenario: Último intento fallido
    Dado un archivo con extensión .tc
    Cuando busco información sobre como averiguar la contraseña
    Y encuentro que el programa truecrack me sirve para eso
    Cuando descargo e instalo el programa
    Y consigo un diccionario de más de un millon de palabras
    Y trato un ataque por diccionario usando el archivo conseguido
    Y encuentro el password de la imagen
    Cuando pongo la contraseña encontrada como respuesta
    Entonces no resuelvo el reto
    Pero concluyo que debo abrir la imagen de disco

  Escenario: Solucion exitosa
    Dado un archivo con extensión .tc protegido por contraseña
    Cuando ingreso al archivo usando la contraseña previamente encontrada
    Y encuentro un archivo de texto con la respuesta
    Entonces resuelvo el reto
