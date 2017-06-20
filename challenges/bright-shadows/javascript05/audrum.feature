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
    Cuando el reto solicita un usuario
    Y reviso el código fuente
    Y pruebo usar el usuario que se encuentra en el condicional if
    Entonces no resuelvo el reto
    Pero concluyo que usé una variable pero no el usuario

  Escenario: Solución exitosa
    Dado que estoy autenticado con mi usuario Audrum
    Cuando analizo el código fuente
    Y obtengo los caracteres de la cadena unescape
    Y detecto el usuario
    Y lo ingreso en la página
    Entonces resuelvo el reto
