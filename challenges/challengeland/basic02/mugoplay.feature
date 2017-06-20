#language: es

Característica: Challengeland - Basic 2
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Basic 2

Escenario: Obervacion de los datos
  *Dado una pagina web con las instrucciones del reto
  *Cuando trato de introducir la contraseña
  *Y el resultado es un error
  *Entonces debo modificar el codigo de la pagina

Escenario: Modificacion de formulario
  *Dado el codigo de la pagina
  *Cuando modifico el rango de la entrada en el form
  *Y coloco nuevamente la contraseña
  *Entonces puedo pasar el reto
