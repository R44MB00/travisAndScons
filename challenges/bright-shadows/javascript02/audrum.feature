# language: es

Característica: Resolver reto Often used but easy to solve
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto Often used but easy to solve

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar con la contraseña en blanco
    Y me regresa a la página de inicio debido a que es incorrecto
    Entonces no resuelvo el reto
    Pero concluyo que puedo observar el código fuente

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando observo el código fuente
    Y veo una funcion en lenguaje javascript llamada "password"
    Y analizo que realiza el código
    Y detecto que la clave es la combinanción de dos códigos de colores
    Y la el password es D0D0FF
    Entonces resuelvo el reto
