#language: es

Característica: Hackthis - Inter 5
 *Como usuario de wechall y Hackthis
 *Yo quiero resolver el reto Inter 5

Escenario: Funcionamiento syslog
  *Dado una instruccion y unos logs
  *Cuando intento la autenticacion desde multiples direcciones
  *Y verifico el estado del reto
  *Entonces no supero el mecanismo de control

Escenario: Inyeccion de logs
  *Dado un campo de entrada
  *Cuando introduzco un usuario mas un salto de linea
  *Y se introduce un cambio vacio en los logs
  *Entonces supero el mecanismo de control y e
