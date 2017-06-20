#language: es

Característica: Challengeland - Reverse 3
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Reverse 3

Escenario: Analisis estatico PE
  *Dado un archivo PE y unas instrucciones
  *Cuando analizo el PE mediante hexdump
  *Y encuentro la linea STDIN del PE
  *Y realizo el ROT13 con 27 caracteres 
  *Entonces falla la solucion

Escenario: Extraccion de codigo fuente
  *Dado un archivo PE y un extractor de codigo
  *Cuando recupero el codigo
  *Y ejecuto el PE
  *Y analizo la salida
  *Entonces identifico el charset del ROT13

Escenario: Identificacion de contraseña
  *Dado un serial
  *Cuando hago ROT13 con ASCII como charset
  *Entonces encuentro la respuesta al reto
