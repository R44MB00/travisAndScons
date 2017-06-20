
# language: es

Característica: descifrar el mensaje
  Del sitio world of wargame
  De la categoría kryptos
  Con mi usuario b1nary

  Antecedentes:
    Dado un mensaje codificado
    Y una descripción del reto
 
  Escenario: Intento fallido
    Dado un mensaje codificado
    Cuando convierto el mensaje de decimal a ascii
    Y no veo ninguna salida
    Y el resultado en hexadecimal lo ingreso en un editor de hexadecimal
    Y veo una parte del mensaje pero faltan algunos caracteres
    Entonces no resuelvo el reto
    Pero entiendo que debo buscar los caracteres restantes en una tabla ascii extendida
 
  Escenario: Solucion
    Dada un mensaje codificado
    Cuando convierto el mensaje de decimal a hexadecimal
    Y reemplazo los valores hexadecimales por los correspondientes valores de la tabla ascii extendida
    Entonces obtengo la solución
