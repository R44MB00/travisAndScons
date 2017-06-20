# language: es

Característica: Resolver reto 1
  Del sitio hackthis
  De la categoría Forensics
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y tengo instalado el software Virtual Box versión 5.1.14r112924
    Y he resuelto el reto Forensics 1

  Escenario: Solución fallida
    Dado un archivo de imagen
    Entonces extraigo los datos
    Y se genera una carpeta sin archivos
    Entonces no resuelvo el reto
    Pero concluyo que el archivo de imagen esta corrupto

  Escenario: Solución exitosa
    Dado un archivo de imagen corrupta
    Entonces con la máquina virtual ejecutando Ubuntu
    Y realizo un comando de recuperación de archivos
    Entonces se crea una carpeta con rar para extraer
    Y con un método de fuerza bruta descubro las claves del rar
    Entonces se genera un archivo de audio
    Entonces con una herramienta online decodifico los tonos DTMF
    Y copio los códigos
    Entonces resuelvo el reto
