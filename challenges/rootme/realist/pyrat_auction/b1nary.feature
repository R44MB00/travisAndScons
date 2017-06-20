# language: es

Característica: resolver reto realistic
  Del sitio Root-me
  De la categoría Realistic
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web simple
    Y he resuelto retos de web server
    
  Escenario: Explorando el sitio
    Dada una url
    Cuando cuando veo un parámetro que hace referencia a una página en la url
    Y lo cambio por index.php
    Entonces puedo ver el error típico de Local File Inclusion

  Escenario: Primer intento fallido
    Dada una url vulnerable a LFI
    Cuando intento buscar archivos como passwd
    Y recibo errores de que el archivo no existe
    Y veo que el sistema solo me permite abrir archivos en el mismo directorio
    Entonces no resuelvo el reto
    Pero concluyó que la contraseña debe estar en uno de los archivos del directorio

  Escenario: Último intento fallido
    Dada una url vulnerable a LFI
    Cuando intento utilizar los wrappers de php
    Y trato de ejecutar un shell
    Y veo el mensaje de error que dice que los wrappers de php están deshabilitados
    Entonces no resuelvo el reto
    Pero concluyo que debo utilizar los filtros de php para leer los archivos

  Escenario: Obteniendo el codigo fuente
    Dada una url vulnerable a LFI
    Cuando utilizo los filtros de php para imprimir el código fuente en base64
    Y decodifico el código base64
    Entonces veo el código fuente de las páginas index.php y encheres.php

  Escenario: Solución
    Dados los códigos fuentes de las páginas
    Cuando leo detalladamente el código fuente de index.php
    Y veo que se importa una configuración de config.php
    Y utilizó nuevamente los filtros de php para leer el código fuente de config.php
    Entonces encuentro la contraseña
