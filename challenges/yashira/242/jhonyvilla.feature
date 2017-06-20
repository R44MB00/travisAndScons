#language: es

  Característica: Resolver reto 242
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dada una página que pide un usuario y una contraseña
    Cuando ingreso dos datos cualquiera
    Y presiono el botón de validar
    Y me sale una alerta JavaScript con la palabra "Incorrecto!"
    Entonces no resuelvo el reto
    Pero concluyo que puedo buscar esa palabra en específico

  Escenario: Solución exitosa
    Dada una página que pide un usuario y una contraseña
    Cuando veo el código fuente desde el navegador
    Y busco la palabra "Incorrecto!"
    Y veo el código JavaScript que revela el user y pass verdaderos
    Entonces resuelvo el reto
