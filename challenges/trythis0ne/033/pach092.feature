# language: es

Característica: Resolver Others 33
  Del sitio trythis0ne
  De la categoría Others
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en trythis0ne
    Y tengo el sistema operativo Windows versión 10
    Y tengo instalado Microsoft Edge versión 38
    Y tengo acceso a internet
    Y he resuelto el reto Others 33

  Escenario: Solución fallida
    Dado una pagina con un archivo flash con usuario y contraseña
    Entonces veo que hay unas letras en mayuscula
    Entonces escribo las letras en mayusculas
    Y me deniega el acceso
    Entonces no resulevo el reto
    Pero concluyo que podria revisar el archivo en hexadecimal

  Escenario: Solución exitosa
    Dado una herramienta en linea para editar los hexadecimales
    Entonces subo el archivo flash
    Y busco entre las lineas el usuario y la contraseña
    Entonces los encuentro
    Y soluciono el reto
