# language: es

Característica: Resolver reto First one and very easy to do
  Con código Javascript
  Del sitio bright-shadows.net
  De la categoría Javascript
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio bright-shadows.net
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome version 58
    Y tengo acceso a internet
    Y he resuelto el reto First one and very easy to do

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando intento ingresar con mi mismo usuario
    Y no ingresa
    Entonces no resuelvo el reto
    Pero concluyo que el usuario esta en la pagina

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando observo el codigo fuente de la pagina
    Y detecto que existe una funcion en javascript que valida el usuario
    Y escribo el mismo usuario que alli se valida
    Entonces resuelvo el reto
