# language: es

Característica: Encontrar el mensaje oculto
  Del reto steganography 12
  Del sitio canyouhack.it
  Con mi usuario b1nary

  Antecedentes:
    Dada una imagen
    Y conocimientos sobre esteganografía
    Y el software stegsolve.jar, foremost y john the ripper
    
  Escenario: Primer intento fallido
    Dada una imagen
    Cuando analizo la imagen con steg solve
    Y veo que en el resultado se menciona el nombre RAR
    Y convierto la extensión del archivo de png a rar
    Y intento extraer el archivo pero veo que tiene contraseña
    Y intento extraer el hash de la contraseña con john2rar
    Y veo que no retorna nada
    Entonces no soluciono el reto
    Pero concluyó que el archivo rar se debe extraer primero de la imagen
    
  Escenario: Extrayendo el archivo rar
    Dada una imagen
    Cuando utilizo la herramienta foremost
    Y extraigo el rar
    Y utilizó nuevamente john2rar para extraer el hash
    Y veo que ahora si funciona
    Entonces obtengo el hash de la contraseña para poder extraer el rar
    
  Escenario: Segundo intento fallido
    Dado un rar
    Cuando intento crackear el hash con john the ripper
    Y veo que tarda demasiado
    Entonces no soluciono el reto
    Pero concluyo que debo obtener la contraseña o el contenido de otra manera
    
  Escenario: Solucion
    Dado un rar
    Cuando consulto el formato y estructura de un archivo rar
    Y veo que hay un bit que determina si el archivo está protegido por contraseña
    Y lo cambio 0
    Y intento abrir nuevamente el archivo pero veo que tiene errores
    Entonces extraigo el archivo con unrar y puedo ver finalmente la solución
