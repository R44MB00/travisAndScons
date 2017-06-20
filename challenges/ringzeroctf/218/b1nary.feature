# language: es

Característica: leer el contenido del archivo flag.txt
  Del reto bash jail 1
  Del sitio ringzer0teamctf
  Con mi usuario b1nary

  Antecedentes:
    Dado una máquina con conexión remota vía ssh
    Y conocimientos basicos sobre linux
    
  Escenario: Primer intento fallido
    Dada una maquina
    Cuando me conecto utilizando ssh
    Y veo el código fuente del script que se está ejecutando
    Y veo que puedo ingresar texto pero no puedo ver la salida que este genera
    Y intento utilizar cat flag.txt
    Y no genera ningún tipo de mensaje
    Entonces no soluciono el reto
    Pero concluyó que debo encontrar una manera de ejecutar comandos
    
  Escenario: Accediendo mediante bash
    Dada una maquina
    Cuando ingreso /bin/bash
    Y veo que se inicia bash
    Entonces obtengo una manera libre de ejecutar comandos
    
  Escenario: Segundo intento fallido
    Dada una maquina
    Cuando intento utilizar cat flag.txt en la sesión de bash que tengo
    Y veo que aun no puedo ver el resultado
    Entonces no soluciono el reto
    Pero concluyo que debo encontrar otra manera de mostrar la salida del comando
    
  Escenario: Solucion
    Dada una maquina
    Cuando utilizo el comando cat flag.txt
    Y le agrego 1>&2 al final para enviar la salida al stderr
    Entonces obtengo la solución
