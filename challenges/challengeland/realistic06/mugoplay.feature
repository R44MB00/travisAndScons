#language: es

Característica: Challengeland - Realistic 6
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Realistic 6

Escenario: Ingreso al portal de administracion
  *Dado una pagina web
  *Cuando elimino los campos del formulario
  *Y logro ingresar a lapagina
  *Entonces ver los usuarios y codigo fuente

Escenario: Revision script
  *Dado un script .js
  *Cuando identifico su funcion y variables
  *Y valido los id
  *Entonces puedo conseguir los hash de contraseñas

Escenario: Escalamiento de privilegios
  *Dado un hash del usuario con mayor status
  *Cuando decifro el hash
  *Y realizo un login con las credenciales
  *Entonces puedo pasar el reto
