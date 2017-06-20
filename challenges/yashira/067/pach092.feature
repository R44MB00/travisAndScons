# language: es

Característica: Resolver reto 67
  Del sitio yashira
  De la categoría Lenguajes Diseño Web
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Lenguajes Diseño Web 67

  Escenario: Solución fallida
    Dado una palabra con un color
    Entonces debo descifrar el color del texto
    Y busco en el código fuente el color que tiene el texto
    Entonces no resuelvo el reto

  Escenario: Solución exitosa
    Dado el texto con color especifico
    Entonces realizo una captura de pantalla a la pagina
    Y con Paint analizo el color del texto en formato RGB
    Entonces con un conversor de RGB a decimal encuentro el color
    Entonces resuelvo el reto
