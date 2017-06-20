# language: es

Característica: Resolver reto 6
  Del sitio hackthis
  De la categoría intermedio
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto intermedio 6

  Escenario: Primer intento fallido
    Dado que se indica en la información que el formulario no usa SQL
    Entonces en la sección pista dan información sobre XML
    Y busco información sobre inyección XML
    Y digito en el campo de usuario un código de inyección
    Entonces no resuelvo el reto
    Pero concluyo que se debe realizar por inyección de XML

  Escenario: Solución exitosa
    Dado que en el primer intento había dejado en blanco el campo contraseña
    Entonces en el campo usuario hago una condición que siempre sea verdadera
    Y en el campo contraseña una condición para que busque a Sandra Murphy
    Entonces resuelvo el reto
