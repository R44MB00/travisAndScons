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
    Cuando ingreso asd' or '1'='1
    Y veo el error que dice "caracteres ilegales"
    Entonces no soluciono el reto
    Pero concluyó que no se permiten caracteres como ' o =

  Escenario: Segundo intento fallido
    Dada una página web vulnerable a sql injection
    Cuando ingreso asd' or 1=1
    Y veo el error que dice "caracteres ilegales"
    Entonces no soluciono el reto
    Pero concluyó que el carácter que no se permite es el =

  Escenario: Solucion
    Dada una página web
    Cuando ingreso asd' or 1 or '
    Y veo el flag
    Entonces obtengo la solución
