#language: es

  Característica: Resolver reto Realistic 3
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un sitio web de una institución educativa
    Y se pide hackear este
    Cuando miro el codigo fuente del index
    Y veo que hay varias páginas entre ella submit.php
    Cuando miro que esa pagina permite enviar enlaces web al servidor
    Y miro si es posible tambien enviar codigo javascript al servidor
    Y uso la instrucción <script>alert(hola);</script>
    Entonces no resuelvo el reto

  Escenario: Solución exitosa
    Dado un sitio web de una institución educativa
    Y se pide hackear este
    Cuando voy a la pagina submit.php
    Y veo el codigo fuente de esta
    Y veo que el formulario tiene un campo oculto
    Y uso la herramienta inspeccionar para cambiar el valor de ese campo
    Y pruebo otra vez a enviar codigo javascript al servidor
    Y uso la instrucción <script>alert(hola);</script>
    Entonces resuelvo el reto
