#language: es

  Característica: Resolver reto Bonus Challenge 4
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web que solicita un password
    Cuando veo el código fuente
    Y veo una imagen oculta
    Y descargo dicha imagen
    Y le cambio el color usando paint
    Entonces resuelvo el reto
