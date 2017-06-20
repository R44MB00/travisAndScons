#language: es

  Característica: Resolver reto basic 7
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Y ademas la página tiene un script que ejecuta comandos unix
    Y la contraseña está almacenada en algún archivo del sitio
    Cuando uso pongo en el campo del script ; ls
    Y me carga una página que muestra todos los archivos
    Y accedo al archivo .php que contiene el password
    Entonces resuelvo el reto
