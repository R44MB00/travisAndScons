#language: es

Característica: Hackthis - Real 4
 *Como usuario de wechall y Hackthis
 *Yo quiero resolver el reto Real 4

Escenario: Escalamiento de privilegios
  *Dado unas credenciales debiles
  *Cuando me autentico como admin en la pagina de ventas
  *Y encuentro el hash de la contraseña del usuario indicado
  *Entonces me puedo autenticar en la pagina de correo

Escenario: Recuperacion de credenciales
  *Dado una pagina bancaria y un correo electronico
  *Cuando solicito los datos de autenticacion
  *Y me logueo en lapagina de transferencias
  *Entonces elimino los registros y realizo una transferencia no autorizada
  *Y supero el reto
