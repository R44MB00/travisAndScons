# language: es

Característica: encontrar el tag oculto
  Del sitio world of wargame
  De la categoría web
  Con mi usuario b1nary

  Antecedentes:
    Dado un una página web
    Y una descripción del reto que sugiere que la contraseña esta en el nombre de un tag oculto
    Y el navegador firefox instalado
    
  Escenario: Solucion
    Dada una página
    Cuando veo el código fuente
    Y encuentro un tag abajo de la descripción del reto
    Entonces obtengo la solución
