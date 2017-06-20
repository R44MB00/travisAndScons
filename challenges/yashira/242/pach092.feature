# language: es

Característica: Resolver reto 242
  Del sitio yashira
  De la categoría Lenguajes Diseño Web
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Lenguajes Diseño Web 242

  Escenario: Solución fallida
    Dado un script
    Entonces desarrollo el script
    Y escribo la respuesta en sus campos
    Entonces no resuelvo el reto

  Escenario: Solución exitosa
    Dado un segundo script
    Entonces copio los campos de usuario y contraseña
    Entonces resuelvo el reto
