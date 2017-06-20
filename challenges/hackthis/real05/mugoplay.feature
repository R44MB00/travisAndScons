#language: es

Característica: Hackthis - Real 5
 *Como usuario de wechall y Hackthis
 *Yo quiero resolver el reto Real 5

Escenario: Escalamiento de privilegios
  *Dado una pagina vulnerable a path traversal
  *Cuando solicito la pagina principal
  *Y aplico el EOF del lenguaje C
  *Entonces puedo encontrar la contraseña y superar el reto
