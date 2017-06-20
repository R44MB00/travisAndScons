# language: es

Característica: Resolver application 3
  Del sitio hackthissite
  De la categoría application
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto application 3

  Escenario: Solución fallida
    Dado un programa con serial autenticado por Internet
    Entonces capturo los paquetes de red
    Y digito cualquier clave
    Entonces reviso en los paquetes de red el protocolo GET
    Y me dirige a un link
    Entonces entro al link
    Y me encuentro con una página sin claves
    Entonces no paso el reto
    Pero concluyo que debo editar el ejecutable

  Escenario: Solución exitosa
    Dado un programa con serial
    Entonces con una herramienta en línea edito el ejecutable
    Y cambio la condición verdadera por la falsa
    Entonces digito cualquier serial
    Y me muestra la clave
    Entonces resuelvo el reto
