# language: es

Característica: resolver reto 108
  Con utilización de código dado en javascript
  Del sitio yashira.org
  De la categoría Lenguajes Diseño Web
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio yashira.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo instalado node.js versión 4.5.0 para ejecutar código en javascript
    Y tengo crunch versión 3.6 para crear diccionarios personalizados
    Y tengo acceso a internet utilizando Mozilla Firefox

  Escenario: Último intento fallido
    Dado un código en javascript que codifica una entrada y pide dos salidas
    Y leyendo el código me doy cuenta que la entrada debe ser un número
    Pero me doy cuenta de que es poco alentador hacerle seguimiento
    Entonces opto por hacer un ataque de fuerza bruta en la entrada con crunch
    Y creando un diccionario de números decimales de 5 dígitos cada número
    Y el comando quedaría crunch 5 5 0123456789 > dic5.txt
    Y opto por crear un programa en javascript (GoXo.js)
    Y este programa toma cada línea del diccionario
    Y la ingresa como entrada a la función
    Y luego comparamos las dos salidas de esta función con las salidas pedidas
    Cuando se acerte entonces se muestra el acierto y se termina el programa
    Pero no obtengo ningún resultado con el diccionario que he creado
    Entonces al parecer debo crear un diccionario con mas digitos en cada línea

  Escenario: Solución exitosa
    Dado un código en javascript que codifica una entrada y pide dos salida
    Cuando creo un diccionario de números decimales de 6 dígitos cada número
    Y el comando quedaría crunch 5 5 0123456789 > dic6.txt
    Entonces con mi programa leo cada línea del diccionario
    Y la ingreso a la función que codifica la entrada
    Y comparo las dos salidas de esta funcion con las salidas pedidas
    Entonces acierto con el número de 6 digitos: 131072
    Y soluciono el reto

