#language: es

Característica: Challengeland - JavaScript 3
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto JavaScript 3

Escenario: Analisis del script
  *Dado una pagina web y un script .js
  *Cuando inspecciono el codigo en .js
  *Y no hay datos relevantes
  *Entonces pruebo el script por consola

Escenario: Ejecucion del script
  *Dado la ejecucion del script .js
  *Cuando la ejecucion falla con error
  *Y busco el error en internet
  *Entonces encuentro que hace falta la libreria JQuery

Escenario: Importacion JQuery y ejecucion del script
  *Dado la libreria JQuery y script .js
  *Cuando ejecuto el script
  *Y agrego el id en el formulario web de solucion
  *Entonces obtengo la contraseña y paso el reto
