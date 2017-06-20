#language: es

  Característica: Resolver reto Realistic 1
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada un sitio web donde se hace una encuesta sobre la mejor banda
    Y se pide hacer que una de las agrupaciones encabece la lista
    Cuando examino el codigo fuente del sitio
    Y me doy cuenta que las votaciones son tomadas por un formulario
    Y el voto especifico se controla con una lista desplegable
    Y cada opción de la lista tiene un valor especéfico
    Cuando uso la herramienta inspeccionar
    Y cambio el valor del voto por un número bastante alto
    Entonces resuelvo el reto
