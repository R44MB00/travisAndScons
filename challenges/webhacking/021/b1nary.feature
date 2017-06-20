# language: es

Característica: resolver reto 21
  Del sitio webhacking.kr
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web simple
    Y un título que dice blind sql injection
    
  Escenario: Encontrando el parámetro vulnerable
    Dada una url
    Cuando veo el parámetro "no" en la url
    Y pruebo añadiendo " and 1=1"
    Y veo que el resultado es True
    Y pruebo añadiendo " and 1=2" y veo que el resultado es False
    Entonces obtengo el parámetro vulnerable a sql injection blind
    
  Escenario: Intento fallido
    Dada una url con un parámetro vulnerable a sql injection blind
    Cuando intento obtener el nombre del usuario utilizando "union select" o "union all select"
    Y veo que siempre sale False como resultado
    Entonces no soluciono el reto
    Pero concluyo que debo obtener la información utilizando otro método
    
  Escenario: Obteniendo la longitud del usuario y contraseña
    Dada una url con un parámetro vulnerable a sql injection blind
    Cuando agrego " and length(id)=5"
    Y veo que retorna True
    Y agrego " and length(id)=5"
    Y veo que retorna True
    Entonces logró obtener la longitud del nombre de usuario y contraseña
    
  Escenario: Segundo intento fallido
    Dada una url con un parámetro vulnerable a sql injection blind
    Cuando creo un script para extraer el nombre de usuario utilizando "and ascii(substring(id,1,1))="
    Y obtengo que el usuario es guest
    Y utilizo el script de manera similar para extraer la contraseña
    Y obtengo que la contraseña es guest
    Entonces no soluciono el reto
    Pero concluyo que debo buscar otro usuario
    
  Escenario: Solucion
    Dada una url con un parámetro vulnerable a sql injection blind
    Cuando pruebo los valores "2" "3" "4"
    Y veo que solo los valores "2" "1" retornan True
    Y ejecutar las mismas pruebas pero en vez de utilizar el valor "1" utilizo "2"
    Entonces obtengo el usuario "admin" y la contraseña para validar el reto
