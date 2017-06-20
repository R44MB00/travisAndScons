# language: es

Característica: resolver el reto 12
  Del webhacking.kr
  Con mi usuario b1nary

  Antecedentes:
    Dado un link a un sitio web
    Y tengo conocimientos sobre javascript
    
  Escenario: Solucion
    Dada una url
    Cuando veo el código fuente
    Y veo que el código está ofuscado
    Y escribo el nombre de la variable que tiene el código ofuscado en la consola
    Y veo el código en texto plano
    Y veo que compara un valor de una contraseña con otro que también está ofuscado
    Y simplemente modifico el codigo para hacer un alert con la contraseña
    Entonces obtengo la solución
