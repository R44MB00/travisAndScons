#language: es

  Característica: Resolver reto Recon 9
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dada una imagen de un templo
    Cuando la busco en internet
    Y veo el nombre del templo
    Y lo pongo como respuesta
    Entonces no resuelvo el reto
    Pero concluyo que quizas sea el lugar donde se encuentra

  Escenario: Solución exitosa
    Dada una imagen de un templo
    Cuando la busco en internet
    Y veo el lugar donde se encuentra
    Entonces resuelvo el reto
