#language: es

  Característica: Resolver reto extbasic 12
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada un script en PHP vulnerable
    Y se pide explotar dicha vulnerabilidad
    Cuando añado a la url los valores de las variables solicitadas
    Entonces resuelvo el reto
