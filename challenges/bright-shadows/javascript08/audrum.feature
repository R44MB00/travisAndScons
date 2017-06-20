# language: es

Característica: Resolver reto Encryption is everything
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto Encryption is everything

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar al reto
    Y me pide un password que no conozco
    Y intento con uno al azar
    Entonces no resuelvo el reto
    Pero concluyo que debo observar el código fuente

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando analizo el código fuente
    Y encuentro una función codificada
    Y la decodifico obteniendo un hash
    Y al hacer reversing al hash obtengo que la clave es la palabra hash
    Entonces resuelvo el reto
