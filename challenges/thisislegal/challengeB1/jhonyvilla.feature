#language: es

  Característica: Resolver reto Bonus Challenge 1
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web que ejecuta una función javascript
    Y esta función solicita un password
    Cuando desactivo javascript en la página
    Y busco la función en el código fuente
    Y encuentro el password
    Y activo javascript nuevamente
    Cuando recargo la página
    Y pongo el password
    Entonces resuelvo el reto
