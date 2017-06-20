#language: es

  Característica: Resolver reto Challenge S1E15
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
	Y tengo instalada la extensión EditThisCockie

  Escenario: Intento fallido
    Dada una página web con un texto
    Y se pide encontrar la solución al reto
    Cuando veo el texto de la página
    Y veo que hace referencia a alguna cockie
    Y esa cockie tiene el nombre de solutionHC
    Cuando uso la extensión para cambiar el valor por el nombre que dice el texto
    Y recargo la página
    Entonces no resuelvo el reto
    Pero concluyo que no hay que modificar la cockie

  Escenario: Solución exitosa
    Dada una página web con un texto
    Y se pide encontrar la solución al reto
    Cuando veo el texto de la página
    Y veo que hace referencia a alguna cockie
    Cuando veo el valor de la cockie
    Y lo pongo como solución al
    Entonces resuelvo el reto

