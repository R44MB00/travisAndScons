# language: es

Característica: Resolver reto Easy script
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto Easy script

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar al reto
    Y me piden un password
    Y no lo conozco
    Entonces no resuelvo el reto
    Pero concluyo que debo examinar el código fuente

  Escenario: Último intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando reviso el código fuente
    Y encuentro una página oculta con un código javascript que tiene el password nice_or?
    Y lo ingreso
    Entonces resuelvo el reto
