#language: es

  Característica: Resolver reto Recon 7
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una imagen de un tipo volando
    Cuando la busco en internet
    Y veo que se trata de un deporte
    Y veo el nombre del campeón de ese deporte
    Y lo pongo como respuesta
    Entonces no resuelvo el reto
    Pero concluyo que quizas sea otra persona

  Escenario: último intento fallido
    Dada una imagen de un tipo volando
    Cuando la busco en internet
    Y veo que se trata de un deporte
    Y veo el nombre de un deportista que falleció practicandolo
    Y lo pongo como respuesta
    Entonces no resuelvo el reto
    Pero concluyo que quizas no sea una persona sino el lugar

  Escenario: Solución exitosa
    Dada una imagen de un tipo volando
    Cuando la busco en internet
    Y veo que se trata de un deporte
    Y veo el nombre del lugar donde se realizó la foto
    Y lo pongo como respuesta
    Entonces resuelvo el reto
