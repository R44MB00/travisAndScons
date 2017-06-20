#language: es

Característica: Challengeland - Realistic 3
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Realistic 3

Escenario: Habilitar contenido oculto
  *Dado una pagina web
  *Cuando reviso las cookies
  *Y cambio su valor a true
  *Entonces puedo habilitar la pagina de registro

Escenario: Registro en pagina web
  *Dado un formulario con boton submit deshabilitado
  *Cuando modifico el codigo de la pagina 
  *Y completo el registro
  *Entonces puedo ingresar como usuario

Escenario: Escalamiento de privilegios
  *Dado unas cookies codificadas
  *Cuando decodifico el valor de las cookies
  *Y cambio su valor ingresando con mayores privilegios
  *Entonces puedo pasar el reto
