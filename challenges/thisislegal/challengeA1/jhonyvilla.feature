#language: es

  Característica: Resolver reto Aplication I
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa OllyDBG

  Escenario: Solución exitosa
    Dada una aplicación .exe que, al ejecutarla, busca algo especifico
    Cuando la abro con OllyDBG
    Y la analizo detalladamente
    Y veo que se busca así misma en una ruta especifica del equipo
    Y creo esa ruta en mi equipo
    Y ejecuto el .exe
    Entonces resuelvo el reto
