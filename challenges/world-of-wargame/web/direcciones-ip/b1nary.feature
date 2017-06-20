# language: es

Característica: obtener la contraseña
  Del sitio world of wargame
  De la categoría web
  Con mi usuario b1nary

  Antecedentes:
    Dada un una página web
    Y una descripción del reto
 
  Escenario: Intento fallido
    Dada una pagina
    Cuando ingreso la ip mía
    Y la ip del servidor
    Y la ipv6 solicitada en formato completo
    Entonces no resuelvo el reto
    Pero me doy cuenta de que me equivoque con el formato de la ipv6 y de mi ip
 
  Escenario: Solucion
    Dada una página
    Cuando utilizo una pagina para convertir ip a decimal
    Y para convertir a ipv6 en formato corto
    Entonces obtengo la solución
