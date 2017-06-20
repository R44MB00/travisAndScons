#language: es

Característica: Challengeland - Basic 3
 *Como usuario de wechall y Challengeland
 *Yo quiero resolver el reto Basic 3

Escenario: Obervacion del codigo de la pagina
  *Dado una pagina web con las instrucciones del reto
  *Cuando busco la contraseña en el codigo
  *Y no es posible identificarla
  *Entonces debo buscar en otras fuentes

Escenario: Observacion de scripts
  *Dado los vinculos de los scripts de la pagina
  *Cuando inspeciono el codigo de estilos CSS
  *Y leo las lineas comentadas
  *Entonces puedo encontrar la contraseñay pasar el reto
