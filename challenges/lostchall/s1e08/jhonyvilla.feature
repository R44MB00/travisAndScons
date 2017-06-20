#language: es

  Característica: Resolver reto Challenge S1E08
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página que pide encontrar la solución al reto
    Cuando veo el código fuente de la página
    Y veo un link hacia una carpeta diferente
    Cuando abro el link
    Y veo que me aparecen dos directorios llamados mainpocket, sidepocket
    Y accedo a cada directorio
    Y encuentro en mainpocket un archivo txt
    Cuando abro el archivo txt
    Y veo que contiene una pista para acceder a la carpeta plants
    Cuando accedo a dicha carpeta
    Y veo otra pista de que debo buscar una planta
    Y el nombre de esa planta empieza por e
    Y ademas tiene las letras c y s
    Y que el nombre termina con la extensión jpg
    Cuando descubro que el nombre de la planta es eucalyptus
    Y accedo a eucalyptus.jpg
    Y veo en la imagen una palabra
    Entonces resuelvo el reto
