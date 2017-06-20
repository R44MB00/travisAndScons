# language: es

Característica: Resolver reto 89
  Con código Bash
  Del sitio ringzer0team.com
  De la categoría SysAdmin Linux
  Con mi usuario Audrum

  Antecedentes:
    Dado estoy registrado en el sitio ringzer0team.com
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Chrome versión 59
    Y tengo acceso a internet
    Y he resuelto el reto 89

  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario Audrum
    Cuando ingreso via ssh a la dirwcción que me indican
    Y no encuentro el flag
    Entonces no resuelvo el reto
    Pero concluyo que puedo ejecutar un comando

  Escenario: Solución exitosa
    Dado que estoy auntenticado con mi usuario Audrum
    Cuando ejecuto un comando grep
    Y obtengo el flag
    Entonces resuelvo el reto
