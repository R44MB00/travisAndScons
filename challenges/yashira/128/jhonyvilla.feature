#language: es

  Característica: Resolver reto 128
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web que me pide logearme con un usuario especifico
    Cuando ingreso ese usuario seguido de una inyección básica SQL
    Entonces resuelvo el reto
