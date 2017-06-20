#language: es

  Característica: Resolver reto No Escape
    Del sitio wechall.net
    De la categoría exploit, mysql
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una pagina que permite realizar las votaciones por 3 candidatos
    Y se pide que un candidato llegue a los 111 votos
    Y se indica que no es posible porque los candidatos no pueden tener mas de 100 votos
    Y ademas dan el codigo php que se ejecuta al realizar las votaciones
    Cuando pruebo dando un voto al candidato 1
    Y veo que su conteo de votos incrementa en 1
    Y busco en el código php como se incrementan los votos
    Y descubro una instrucción update a la base de datos
    Y agrego una comilla simple a la url de la pagina
    Entonces no resuelvo el reto
    Pero concluyo que puedo hacer sqlinjection

  Escenario: Último intento fallido
    Dada una pagina que permite realizar las votaciones por 3 candidatos
    Y se pide que un candidato llegue a los 111 votos
    Y se indica que no es posible porque los candidatos no pueden tener mas de 100 votos
    Y ademas dan el codigo php que se ejecuta al realizar las votaciones
    Cuando analizo la instrucción update
    Y hago sqlinjection en la url usando por parametros un solo candidato
    Entonces no resuelvo el reto
    Pero concluyo que debo usar como parametro mas de un candidato

  Escenario: Solución exitosa
    Dada una pagina que permite realizar las votaciones por 3 candidatos
    Y se pide que un candidato llegue a los 111 votos
    Y se indica que no es posible porque los candidatos no pueden tener mas de 100 votos
    Y ademas dan el codigo php que se ejecuta al realizar las votaciones
    Cuando analizo la instrucción update
    Y hago sqlinjection en la url usando por parametros dos candidatos
    Y está es la inyección usada vote_for=candidato1`=111,`candidato2`=`candidato2
    Entonces resuelvo el reto
