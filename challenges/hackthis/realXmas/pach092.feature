# language: es

Característica: Resolver reto Xmas
  Del sitio hackthis
  De la categoría Real
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Real Xmas

  Escenario: Solución exitosa
    Dado una página para cambiar un archivo
    Entonces buscando en el código fuente
    Y encuentro un script en PHP
    Entonces ingreso a la página que se muestra en la URL
    Y realizo inyección SQL para entrar
    Entonces abro la página de inicio
    Y copio el código fuente de la página a reemplazar
    Entonces guardo la página con extensión HTML
    Y guardo la nueva pagina
    Entonces resuelvo el reto
