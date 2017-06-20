# language: es

Característica: resolver reto 52
  Del sitio webhacking.kr
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a una página web
    Y que dice "The password is" y por cada segundo muestra un carácter
    
  Escenario: Solucion
    Dada una url
    Cuando veo el código fuente
    Y veo que hay un script de javascript el cual hace peticiones mediante XHR
    Y manda un parámetro m que representa los los caracteres
    Entonces realizó las 32 peticiones XHR y logró obtener la solución
