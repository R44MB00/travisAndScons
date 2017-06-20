# language: es

Característica: Resolver application 2
  Del sitio hackthissite
  De la categoría application
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite
    Y tengo el sistema operativo Windows versión 10
    Y tengo instalado el software Wireshark versión 2.2.4
    Y tengo acceso a internet
    Y he resuelto el reto application 2

  Escenario: Solución fallida
    Dado un programa con serial
    Entonces por medio de un HexEditor reviso la aplicación
    Y busco autenticación
    Entonces no encuentro ningún serial
    Entonces no resuelvo el reto
    Pero concluyo que el programa busca el serial en Internet

  Escenario: Solución fallida
    Dado un programa con serial autenticado por Internet
    Entonces desconecto el enlace a Internet
    Y digito cualquier clave
    Entonces no resuelvo el reto
    Pero concluyo que debo analizar los paquetes

  Escenario: Solución exitosa
    Dado un programa con serial autenticado por Internet
    Entonces capturo los paquetes de red
    Y digito cualquier clave
    Entonces reviso en los paquetes de red el protocolo GET
    Y me dirige a un link
    Entonces entro al link
    Y copio cualquier clave
    Entonces la pego en la aplicación
    Y paso el reto
