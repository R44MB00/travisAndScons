# language: es

Característica: Resolver reto 31 Then obfuscation is more secure
  Con código Javascript
  Del sitio ringzer0team.com
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio ringzer0team.com
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 59
    Y tengo acceso a internet
    Y he resuelto el reto 31

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento loggear el formulario
    Y no conozco el password
    Entonces no resuelvo el reto
    Pero concluyo que puedo mirar el código fuente

  Escenario: Solución exitosa
    Dado que estoy auntenticado con mi usuario Audrum
    Cuando observo el código fuente
    Y observo la clave encriptada en formato hexadecimal
    Y lo descifro
    Y obtengo el password
    Entonces resuelvo el reto
