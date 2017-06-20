# language: es

Característica: encontrar el comentario
  Del sitio world of wargame
  De la categoría web
  Con mi usuario b1nary

  Antecedentes:
    Dado un una página web
    Y una descripción del reto que sugiere que la contraseña esta en un comentario
 
  Escenario: Intento fallido
    Dada una página
    Cuando veo el código fuente con view-source
    Y no encuentro ningun comentario
    Entonces no soluciono el reto
    Pero me doy cuenta de que es porque el contenido del reto se agrega mediante ajax
 
  Escenario: Solucion
    Dada una página
    Cuando veo el código fuente de las peticiones al cargar la página
    Y encuentro la que carga el reto
    Entonces obtengo la solución
