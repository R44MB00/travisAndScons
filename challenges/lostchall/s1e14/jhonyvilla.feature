#language: es

  Característica: Resolver reto Challenge S1E14
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web
    Y se pide encontrar la solución al reto
    Cuando veo el código fuente de la página
    Y encuentro una página leanr.php
    Y al lado de esta un comentario que dice link erroneo
    Cuando abro la página leanr.php
    Y corrigo su nombre por learn.php
    Entonces resuelvo el reto
