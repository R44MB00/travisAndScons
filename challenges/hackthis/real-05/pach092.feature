# language: es

Característica: Resolver reto 5
  Del sitio hackthis
  De la categoría Real
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Real 5

  Escenario: Solución fallida
    Dado un enlace para entrar al modo administrador del blog
    Entonces realizo una inyección SQL
    Y no resuelvo el reto
    Entonces veo que la dirección web ha cambiado
    Pero concluyo que el proceso es por inyección

  Escenario: Solución fallida
    Dado un blog
    Entonces reviso cada uno de los enlaces
    Y busco vulnerabilidades en la página de ingreso como administrador
    Entonces no las encuentro
    Entonces no resuelvo el reto
    Pero concluyo que hay una vulnerabilidad cuando ingreso a otra pagina

  Escenario: Solución exitosa
    Dado un blog
    Entonces realizo una búsqueda de admin en la carpeta superior
    Y envío un bit vacío
    Entonces se muestra un campo de formulario
    Y reviso el código fuente
    Entonces encuentro la contraseña
    Y la copio en el campo de administrador
    Entonces resuelvo el reto
