# language: es

Característica: resolver reto 42
  Del sitio webhacking.kr
  Con mi usuario b1nary

  Antecedentes:
    Dado un sitio web con 2 archivos para descargar
    Y uno de los links muestra el mensaje "Acceso denegado"
    
  Escenario: Intento fallido
    Dado un sitio web para descargar 2 archivos
    Cuando hago click en el primer archivo al cual tengo acceso
    Y veo que me redirecciona a un directorio cuyo nombre es un hash de longitud 32
    Y intento descifrar el hash como md5
    Y no encuentro un resultado
    Entonces no soluciono el reto
    Pero concluyo que debo buscar otro método
    
  Escenario: Solucion
   Dado un sitio web para descargar 2 archivo
   Cuando miro detalladamente el link al primero archivo
   Y veo que no es el mismo que tenía el hash
   Y es un link con el nombre del archivo en codificado en base64
   Y intento reemplazar este nombre por el del segundo archivo
   Y logró acceder al segundo archivo el cual es un zip con contraseña
   Y utilizó john the ripper para crackear la contraseña
   Entonces obtengo la solución
