# language: es

Característica: Resolver reto Hash the future!
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto Hash the future!

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento acceder al reto
    Y me arroja de inmediato un mensaje de intentar de nuevo
    Y me regresa a la página de inicio
    Entonces no resuelvo el reto
    Pero concluyo que debo ver el código fuente

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando observo el código fuente
    Y encuentro una operación matemática que usa el año actual
    Y realizo dicha operación obteniento el resultado 513436
    Y escribo la dirección 513436.php
    Entonces resuelvo el reto
