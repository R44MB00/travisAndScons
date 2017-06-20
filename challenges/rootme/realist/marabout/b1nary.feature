# language: es

Característica: resolver reto realistic
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web simple
    Y he resuelto retos de web server
    
  Escenario: Primer intento fallido
    Dada una url
    Cuando veo un parámetro que hace referencia a una página en la url
    Y lo cambio por ../index.php
    Y veo que no muestra ningun error pero tampoco muestra la página index
    Entonces no soluciono el reto
    Pero concluyo que debo buscar otro método
    
  Escenario: Encontrando la vulnerabilidad
    Dada una url
    Cuando ingreso a la opción de anuncios
    Y selecciono algún anuncio
    Y veo que hay un segundo parámetro que apunta al archivo que contiene el anuncio
    Y le agrego ../../../../../../ al valor del parámetro
    Entonces veo el error de Local File Inclusion
    
  Escenario: Segundo intento fallido
    Dada una url vulnerable a LFI
    Cuando intento leer el archivo index.php utilizando los filtros
    Y veo sale un error que dice que el archivo no existe
    Entonces no soluciono el reto
    Pero concluyó que los filtros están desactivados o debo explotar el LFI de otra manera
    
  Escenario: Obteniendo el codigo fuente
    Dada una url vulnerable a LFI
    Cuando ingresó a un anuncio
    Y veo el el origen de la imagen
    Y comprendo que el segundo parámetro vulnerable a LFI apunta primero al directorio inc/announces/
    Y el valor del parámetro es Marabout/img2.jpg
    Y modificó el valor del parámetro por Marabout/../../
    Entonces puedo ver el código fuente de todos los archivos excepto los de las bases de datos
    
  Escenario: Tercer intento fallido
    Dada una url vulnerable a LFI
    Cuando veo el contenido del archivo forgot_dev.php
    Y veo que utiliza microtrime() y rand(1,100) para generar el token para obtener la contraseña
    Y intento recrear estos valores aprovechandome de srand() y el tiempo en que se hace la petición
    Y veo que no funciona porque dice que el token no es válido
    Entonces no soluciono el reto
    Pero concluyó modificar el código
 
  Escenario: Solucion
    Dada una url vulnerable a LFI
    Cuando leo detalladamente el código de forgot_dev.php
    Y veo que el token se genera con rand(1,100) y el string "$salt"
    Y creo un script en python que genere todas las posibilidades de 1 a 100
    Y encuentro un hash que es válido
    Entonces obtengo la solución del reto
