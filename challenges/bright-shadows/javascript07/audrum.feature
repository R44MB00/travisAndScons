# language: es

Característica: Resolver reto $cript Kiddie$
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto $script Kiddie$

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar al reto
    Y solicita un usuario
    Y también una contraseña que no conozco
    Entonces no resuelvo el reto
    Pero concluyo que debo observar el código fuente

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando observo el código fuente
    Y veo que está codificado el script
    Y lo decodifico usando una herramienta online
    Y encuentro que el usuario junto con la contraseña
    Entonces resuelvo el reto
