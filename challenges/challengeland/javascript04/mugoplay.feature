#language: es

Característica: Challengeland - JavaScript 4
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto JavaScript 4

Escenario: Analisis del script
  *Dado un script en .js
  *Cuando inspecciono el codigo   
  *Y no hay datos para la solucion
  *Entonces ejecuto el script en consola

Escenario: Ejecucion del script
  *Dado la ejecucion del script por consola
  *Cuando la ejecucion resulta en error
  *Y busco el error en internet
  *Entonces encuentro que no esta importado JQuery completo

Escenario: Importacion JQuery y ejecucion del script
  *Dado la libreria JQuery completa y un script
  *Cuando descomento lagunas lineas y ejecuto el script
  *Y agrego los metodos del script del lado del server
  *Entonces obtengo la contraseña en formato hash

Escenario: Decifrado de los hash
  *Dado las contraseñas en formato hash
  *Cuando busco en internet los hash
  *Y encuentro las contraseñas en texto plano
  *Entonces paso el reto
