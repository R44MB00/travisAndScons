# language: es

Característica: Obtener el flag
  Del sitio Ringzer0team
  De la categoría SQL Injection
  Con mi usuario b1nary

  Antecedentes:
    Dado una página web
    Y he resuelto retos de sql injection
    Y tengo conocimiento en sql
    
  Escenario: Intento fallido
    Dada una página web
    Cuando selecciono el usuario
    Y utilizó tamper data para modificar la consulta
    Y le agrego ' union select 1--'
    Entonces no soluciono el reto
    Pero veo que no es posible ejecutarse union en la consulta

  Escenario: Solucion
    Dada una página web
    Cuando utilizo tamper data
    Y modificó la consulta para agregarle ' OR '1'='1
    Y veo que se listan todos los usuarios y contraseñas
    Entonces obtengo la solución
