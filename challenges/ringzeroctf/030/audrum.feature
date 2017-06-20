# language: es

Característica: Resolver reto 30
  Con código Javascript
  Del sitio ringzer0team.com
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio ringzer0team.com
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 59
    Y tengo acceso a internet
    Y he resuelto el reto 30

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento loggear el formulario
    Y no conozco el password
    Entonces no resuelvo el reto
    Pero concluyo que puedo mirar el código fuente

  Escenario: Solución exitosa
    Dado que estoy auntenticado con mi usuario Audrum
    Cuando observo el código fuente
    Y observo la clave en formato hash
    Y lo descifro
    Y obtengo el password
    Entonces resuelvo el reto
