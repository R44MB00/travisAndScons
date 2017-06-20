#language: es

  Característica: Resolver reto Realistic 3
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada un sitio web de poesía sobre la paz
    Y este fue modificado
    Y se pide reparar el sitio
    Cuando examino el código fuente del sitio
    Y encuentro un mensaje que dice que la configuración original está en oldindex.html
    Y accedo a él
    Cuando examino el código fuente de oldindex
    Y encuentro 2 páginas, entre ellas submitpoems.php
    Y tiene un formulario
    Y pruebo el formulario
    Y me percato que tal vez es posible subir archivos al servidor
    Y que probablemente se puede reescribir uno existente
    Cuando lleno el formulario con los datos del archivo index original
    Entonces resuelvo el reto
