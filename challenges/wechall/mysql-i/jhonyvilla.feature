#language: es

  Característica: Resolver reto Mysql I
    Del sitio wechall.net
    De la categoría exploit, mysql
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina que pide username y password
    Y dice que es una sqlinjection clasica
    Y ademas dan el código php de la pagina
    Y hay que logearse como admin
    Cuando estudio el codigo php
    Y encuentro la instrucción de consulta que permite el logeo
    Y me doy cuenta que puedo usar la instrucción basica de inyección
    Entonces resuelvo el reto
