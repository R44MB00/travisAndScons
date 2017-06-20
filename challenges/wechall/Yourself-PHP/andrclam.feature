#language: es

Característica: Resolver reto Yourself PHP
  Con codigo Yourself PHP
  Del sitio wechall.net
  De la categoria Exploit,PHP,XSS
  Con mi usuario andrclam
  
  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows versi?n 6.3
    Y tengo acceso a internet
    
  Escenario: Primer intento fallido
    Dado una pagina web vulnerable a xss exploit
    Y un script PHP al que se debe insertar un codigo Javascript
    Y generar un alert a partir de dicho codigo
    Cuando investigo a cerca del xss exploit
    Y observo insercion de codigo a partir de la URL
    Entonces inserto el script solicitado en la url 
    Y no se resuelvo el reto
    Pero concluyo que falta agregar algo en la url
    Y finalmiente funcione el script

  Escenario: Solución exitosa
    Dado el escenario anterior fallido
    Cuando realizo otra investigacion
    Y valido nuevamente sintaxis de insercion del script
    Entonces observo que faltan caracteres en la url
    Y los agrego junto con el script requerido
    Entonces resuelvo el reto
