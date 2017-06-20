# language: es

Característica: Resolver reto 4
  Del sitio hackthis
  De la categoría JavaScript
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y he instalado el software Google Chrome versión 56.0.2924.87
    Y tengo acceso a internet
    Y he resuelto el reto JavaScript 4

  Escenario: Solución fallida
    Dado un campo en el que tengo que ingresar una contraseña
    Entonces busco en el boton pista
    Y me indica que no es la pagina que estoy buscando
    Y cambia la direccion del reto por ?input
    Entonces ingreso output como contraseña
    Entonces no resuelvo el reto
    Pero concluyo que la solucion esta en output

    Escenario: Solución exitosa
    Dado que la pagina cambia
    Entonces en Google Chrome reviso el codigo de fuente
    Y cambio la ultima parte de la direccion por output
    Entonces reviso el codigo fuente de la nueva pagina
    Y encuentro la contraseña verdadera
    Entonces resuelvo el reto
