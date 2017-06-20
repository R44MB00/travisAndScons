#language: es

Característica: Challengeland - Crypto 8
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Crypto 8

Escenario: Analisis del texto
  *Dado texto codificado
  *Cuando verifico la sintaxis deduzco que es base64
  *Y decodifico el texto
  *Entonces obtengo otro texto cifrado

Escenario: Analisis del texto 2
  *Dado texto codificado
  *Cuando verifico la sintaxis deduzco que es de tipo caesar
  *Y decodificando el texto con una herramienta de internet
  *Entonces obtengo la contraseña
