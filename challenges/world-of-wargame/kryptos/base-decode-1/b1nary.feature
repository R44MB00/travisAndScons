
# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario b1nary

  Antecedentes:
    Dado un mensaje codificado
    Y una descripción del reto
 
  Escenario: Solucion
    Dada un mensaje codificado
    Cuando convierto el mensaje de base 64 a ascii
    Entonces obtengo la solución
