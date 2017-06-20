#language: es

  Característica: Resolver reto 41
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado en mi navegador la extensión EditThisCookie

  Escenario: Intento fallido
    Dada una página web que pide obtener determinado número de visitas
    Cuando examino el código fuente y las cookies de la misma
    Y encuentro una cookie con el valor de las visitas
    Y la modifico por el número que pide
    Entonces no resuelvo el reto
    Pero concluyo que debo modificarla por un número mayor

  Escenario: Solución exitosa
    Dada una página web que pide obtener determinado número de visitas
    Cuando examino el código fuente y las cookies de la misma
    Y encuentro una cookie con el valor de las visitas
    Y la modifico por el número que pide multiplicado por 1000
    Entonces habré resuelto el reto
