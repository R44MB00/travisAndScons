#language: es

  Característica: Resolver reto basic 10
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo la extensión EditThisCookie instalada

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña para acceder al nivel 10
    Cuando examino el código fuente
    Y no encuentro nada que sirva
    Y entonces reviso las cookies del sitio
    Y encuentro una que hace referencia al nivel 10
    Y cambio su valor
    Entonces resuelvo el reto
