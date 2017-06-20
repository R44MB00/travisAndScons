#language: es

  Característica: Resolver reto Challenge S1E18
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web que pide jugar con unos números ocultos
    Cuando veo el código fuente de la página
    Y encuentro una función javascript
    Y veo que los números van de 1 a 42
    Y cada uno es multiplicado por 2
    Y se debe lograr sumar 216
    Cuando encuentro la suma adecuada de acuerdo a la función
    Entonces resuelvo el reto
