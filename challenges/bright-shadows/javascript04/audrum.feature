# language: es

Característica: Resolver reto Hard but possible
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 58
    Y tengo acceso a internet
    Y he resuelto el reto Hard but possible

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar al reto pide un usuario
    Y escribo uno de prueba
    Y me arroja error
    Entonces no resuelvo el reto
    Pero concluyo que puedo encontrarlo en el código fuente

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando analizo el código javascript
    Y encuentro una redirección a otra página oculta
    Y entro a esa página
    Y veo un condicional if evaluando el usuario solicitado que es thebestoneisthis
    Entonces resuelvo el reto
