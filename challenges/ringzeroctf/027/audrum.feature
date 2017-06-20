# language: es

Característica: Resolver reto 27
  Con código Javascript
  Del sitio ringzer0team.com
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio ringzer0team.com
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 59
    Y tengo acceso a internet
    Y he resuelto el reto 27

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento loggear el formulario
    Y usuario y clave incorrectos
    Entonces no resuelvo el reto
    Pero concluyo que puedo mirar el código fuente

  Escenario: Solución exitosa
    Dado que estoy auntenticado con mi usuario Audrum
    Cuando observo el código fuente
    Y observo el usuario con el password
    Y lo ingreso al formulario
    Entonces resuelvo el reto
