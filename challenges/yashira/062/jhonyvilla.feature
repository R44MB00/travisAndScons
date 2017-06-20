#language: es

  Característica: Resolver reto 62
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado Netbeans en su versión 8
    Y tengo instalado JAD
    Y tengo instalado Flasm

  Escenario: Intento fallido
    Dada una página con una animación flash
    Cuando examino el código fuente de la página
    Y descargo la animación
	Y uso Flasm para descompilarla
    Y no hay nada importante en esta
    Entonces no resuelvo el reto
    Pero concluyo que debo inspeccionar mas el código fuente

  Escenario: Solución exitosa
    Dada una página con una animación flash
    Cuando examino el código fuente de la página
    Y encuentro un applet
    Y descargo el archivo .class de ese applet
    Cuando lo descompilo usando JAD
    Y abro el .jad resultante con Netbeans
    Y encuentro en este un metodo de desencriptación de textos
    Y esos textos son parametros tomados de la página web
    Cuando hago un seguimiento del metodo de desencriptación
    Y encuentro un usuario
    Y contraseña
    Cuando desactivo javascript para evitar que cargue la página con la animación
    Y me muestre la página donde se soluciona el reto
    Y pongo las credenciales obtenidas
    Entonces soluciono el reto
