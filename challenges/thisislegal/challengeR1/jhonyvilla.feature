#language: es

  Característica: Resolver reto Realistic 1
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un sitio web de una empresa que vende software
    Y se pide adquirir el software a un precio menor que el real
    Cuando miro el codigo fuente del index
    Y veo que hay una pagina 'buy.php' la abro
    Y reviso el codigo fuente
    Y veo que hay un formulario con varios campos ocultos
    Y entre esos campos está uno que tiene el precio
    Y uso la herramienta inspeccionar para cambiar el valor del costo
    Entonces resuelvo el reto
