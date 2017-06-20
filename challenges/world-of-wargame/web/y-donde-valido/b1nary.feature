# language: es

Característica: enviar la solución
  Del sitio world of wargame
  De la categoría web
  Con mi usuario b1nary

  Antecedentes:
    Dado un una página web
    Y una descripción del reto
 
  Escenario: Obteniendo el codigo html para el formulario
    Dada una página
    Cuando inspecciono las otras páginas de retos
    Y veo el codigo html para el formulario
    Entonces obtengo el codigo para enviar la respuesta
 
  Escenario: Primer intento fallido
    Dado un codigo html para enviar la solución
    Cuando inserto la solución
    Y presiono el boton submit
    Entonces no soluciono el reto
    Pero me doy cuenta de que debo editar el valor del input hidden id_reto
 
  Escenario: Segundo intento fallido
    Dado un codigo html para enviar la solución
    Cuando inserto la solución
    Y tomó el id del reto que aparece en la url
    Y lo convierte de decimal a base 64
    Y reemplazo el valor de id_reto por el resultado
    Entonces no soluciono el reto
    Pero me doy cuenta de que debo convertir es de ascii a base64
 
  Escenario: Solucion
    Dado un codigo html para enviar la solución
    Cuando inserto la solución
    Y tomó el id del reto que aparece en la url
    Y lo convierte de ascii a base 64
    Y reemplazo el valor de id_reto por el resultado
    Entonces soluciono el reto
