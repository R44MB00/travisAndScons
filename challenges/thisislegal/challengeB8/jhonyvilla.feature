#language: es

  Característica: Resolver reto Bonus Challenge 8
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web que solicita un password
    Cuando veo el código fuente
    Y veo que el formulario de validación apunta a una ruta especifica
    Y voy a esa ruta
    Y me doy cuenta que puedo listar los directorios del sitio
    Y encuentro un archivo llamado form.pwd
    Entonces resuelvo el reto
