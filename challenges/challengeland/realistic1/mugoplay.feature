#language: es

Característica: Challengeland - Realistic 1 
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Realistic 1

Escenario: Obervacion de los datos
  *Dado una pagina web
  *Cuando utilizo una herramienta para listar los directorios de la pagina
  *Y reviso los directorios
  *Entonces puedo encontrar una aplicacion vulnerable

Escenario: Buscar datos sensibles
  *Dado una aplicacion vulnerable en PHP
  *Cuando busco la vulnerabilidad en internet 
  *Y exploto la vulnerabilidad asignando valores a la variable no definida
  *Entonces puedo encontrar credenciales de autenticacion

Escenario: Buscar datos sensibles
  *Dado unas credenciales de autenticacion
  *Cuando pruebo diferentes valores en el campo de pagina de la url
  *Y encuentro el portal de administracion
  *Entonces puedo ingresar y obtener la respuesta del reto
