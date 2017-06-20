# language: es

Característica: Resolver reto True in the mirrow
  Del sitio http://www.bqbi.net/
  De la categoría Crypto
  Con mi usuario erisohv
  
  Antecedentes:
    Dado que estoy registrado en el sitio http://www.bqbi.net/
    Y tengo el sistema operativo Linux Mint 18
    Y tengo instalado el softwarw Chromium versión 55.0.2883.87
    Y tengo acceso a internet
    Y he resuelto el reto True in the Mirrow
    
  Escenario: Primer intento fallido
    Dado que estoy autenticado con mi usuario erisohv
    Y veo que la clave es "Mirrow" o "Espejo"
    Y leo las letras del problema
    Cuando escribo la respuesta
    Entonces no resuelvo el reto
    Pero concluyo que he colocado mal una letra
    
  Escenario: Solución exitosa 
    Dado que estoy autenticado con mi usuario erisohv
    Y veo que la clave es "Mirrow" o "Espejo"
    Y detecto la letra que he colocado invertida
    Cuando escribo la respuesta con la letra corregida
    Entonces resuelvo el reto
