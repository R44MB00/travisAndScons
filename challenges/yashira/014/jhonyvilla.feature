#language: es

  Característica: Resolver reto 14
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado en mi navegador la extensión EditThisCookie

  Escenario: Intento fallido
    Dada una página web que pide login y pass
    Dado el usuario Administrador con su respectiva contraseña
    Cuando me logeo usando esos datos
    Entonces no resuelvo el reto
    Pero concluyo que de alguna forma hay que modificarlos

  Escenario: Solución exitosa
    Dada una página web que pide login y pass
    Dado el usuario Invitado con su respectiva contraseña
    Cuando me logeo usando esos datos
    Y miro las cookies de la página
    Y me doy cuenta que la contraseña esta encriptada en MD5
    Y cambio las cookies por las de Administrador
    Entonces resuelvo el reto

