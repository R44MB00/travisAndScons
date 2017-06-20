#language: es

  Característica: Resolver reto stego 1
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet


  Escenario: Solución exitosa
    Dada una imagen .bmp
    Y un tip "2 null bytes"
    Cuando investigo sobre esteganografia en imagenes
    Y descubro que una imagen puede ser editada por sus valores hexadecimales
    Y encuentro esta herramienta online https://www.onlinehexeditor.com/
    Y según el tip, busco dos bytes nulos consecutivos
    Y encuentro que despues de estos bytes hay una serie de números hexadecimales
    Y esta serie termina con otros dos bytes null
    Cuando copio esa secuencia de números y la convierto a ASCII
    Entonces resuelvo el reto
