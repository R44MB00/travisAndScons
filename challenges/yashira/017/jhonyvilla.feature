#language: es

  Característica: Resolver reto 17
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web que requiere una contraseña
    Cuando veo el código fuente de esta
    Y me doy cuenta que llama a una función de JavaScript
    Y me percato que la etiqueta <script> llama un recurso externo
    Y analizo el codigo de ese recurso
    Entonces habré resuelto el reto
