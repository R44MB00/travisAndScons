#language: es

Característica: Challengeland - Basic 4
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Basic 4

Escenario: Prueba de entrada de datos
  *Dado una pagina web con las instrucciones del reto
  *Cuando trato de introducir la contraseña
  *Y el campo de entrada esta deshabilitado
  *Entonces debo modificar el codigo HTML

Escenario: Obervacion del codigo de la pagina
  *Dado el codigo de la pagina y una contraseña
  *Cuando habilito el campo de entrada
  *Y coloco la contraseña
  *Entonces puedo pasar el reto 4
