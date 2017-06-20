# language: es

Característica: Resolver reto 3
  Del sitio hackthis
  De la categoría JavaScript
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Google Chrome versión 56.0.2924.87
    Y tengo acceso a internet
    Y he resuelto el reto JavaScript 3

  Escenario: Solución fallida
    Dado un campo en el que tengo que ingresar una contraseña
    Entonces reviso el código fuente y encuentro una variable thecode
    Y digito el valor de la variable thecode
    Entonces no resuelvo el reto
    Pero concluyo que thecode está modificado en algún punto

    Escenario: Solución exitosa
    Dado que la variable está modificada
    Entonces ejecuto la consola de Google Chrome
    Y genero una alerta con la variable thecode
    Entonces la verdadera contraseña se ejecuta como ventana de alerta
    Entonces resuelvo el reto
