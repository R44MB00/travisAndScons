# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario b1nary

  Antecedentes:
    Dado un texto en binario
 
  Escenario: Intento fallido
    Dado un texto en binario
    Cuando lo convierto a ascii
    Y no observó ningún resultado coherente
    Entonces no soluciono el reto
    Pero entiendo que debo hacer algo mas
    
  Escenario: Solucion
    Dado un texto en binario
    Cuando lo convierto a hexadecimal
    Y lo pego en un editor de hexadecimal
    Entonces obtengo la solución
