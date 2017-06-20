# language: es

Característica: ingresar un dominio que apunte a la misma ip
  Del sitio world of wargame
  De la categoría web
  Con mi usuario b1nary

  Antecedentes:
    Dado un una página web
    Y una descripción del reto
 
  Escenario: Solucion
    Dada una página
    Cuando hago ping al sitio
    Y obtengo la ip del sitio
    Y utilizo esta ip en una página de reverse dns lookup
    Y encuentro una lista de sitios
    Entonces obtengo la solución
