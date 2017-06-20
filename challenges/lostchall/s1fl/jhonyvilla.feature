#language: es

  Característica: Resolver reto Challenge S1FL
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
	Y tengo flasm instalado

  Escenario: Primer intento fallido
    Dada una página web que explica que estoy encerrado en una habitación
    Y en esa habitación solo hay una maquina
    Y una puerta
    Y hay una animación en flash que simula dicha situación
    Cuando analizo la animación encuentro varios elementos
    Y esos elementos son una nota, un boton giratorio
    Y dos botones
    Cuando leo la nota, esta dice que los dos botones controlan el teclado de la puerta
    Y el botón giratorio controla la configuración de la maquina
    Y ademas, dice que cuando se esté revisando el sistema no se debe apagar la maquina
    Cuando muevo el boton giratorio
    Y sigo los pasos que dice la maquina
    Entonces no resuelvo el reto
    Pero concluyo que debo hacer lo contrario a lo que dicen

  Escenario: Último intento fallido
    Dada una página web que explica que estoy encerrado en una habitación
    Y en esa habitación solo hay una maquina
    Y una puerta
    Y hay una animación en flash que simula dicha situación
    Cuando analizo la animación encuentro varios elementos
    Y esos elementos son una nota, un boton giratorio
    Y dos botones
    Cuando leo la nota, esta dice que los dos botones controlan el teclado de la puerta
    Y el botón giratorio controla la configuración de la maquina
    Y ademas, dice que cuando se esté revisando el sistema no se debe apagar la maquina
    Cuando muevo el boton giratorio
    Y hago lo contrario a lo que dice la maquina
    Y cuando está revisando el sistema apago la maquina
    Entonces la maquina explota
    Cuando la vuelvo a encender
    Y veo que no funciona bien
    Y hay una instrucción que indica que parar reparar el sistema debo abrir un compartimiento
    Y lo abro
    Y hay un destornillador adentro
    Cuando abro el módulo malo de la maquina
    Y veo un botón
    Cuando lo presiono dice que he hallado la clave de la puerta
    Y voy al módulo de la puerta en la animación
    Y presiono el teclado
    Y debo ingresar una clave de 6 números
    Cuando busco la clave y no la encuentro
    Y descargo la animación para desensamblarla con flasm
    Y no me lo permite
    Entonces no resuelvo el reto
    Pero concluyo que tal vez la solución está en la misma animación

  Escenario: Solución exitosa
    Dada una página web que explica que estoy encerrado en una habitación
    Y en esa habitación solo hay una maquina
    Y una puerta
    Y hay una animación en flash que simula dicha situación
    Cuando analizo la animación encuentro varios elementos
    Y esos elementos son una nota, un boton giratorio
    Y dos botones
    Cuando leo la nota, esta dice que los dos botones controlan el teclado de la puerta
    Y el botón giratorio controla la configuración de la maquina
    Y ademas, dice que cuando se esté revisando el sistema no se debe apagar la maquina
    Cuando muevo el boton giratorio
    Y hago lo contrario a lo que dice la maquina
    Y cuando está revisando el sistema apago la maquina
    Entonces la maquina explota
    Cuando la vuelvo a encender
    Y veo que no funciona bien
    Y hay una instrucción que indica que parar reparar el sistema debo abrir un compartimiento
    Y lo abro
    Y hay un destornillador adentro
    Cuando abro el módulo malo de la maquina
    Y veo un botón
    Cuando lo presiono dice que he hallado la clave de la puerta
    Y voy al módulo de la puerta en la animación
    Y presiono el teclado
    Y debo ingresar una clave de 6 números
    Cuando veo sobre el teclado la pálabra shodan
    Y escribo la equivalencia númerica de cada letra
    Y esa equivalencia es según un teclado telefónico
    Entonces resuelvo el reto
