# language: es

Característica: Resolver reto 2
  Del sitio hackthis
  De la categoría Real
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Real 2

  Escenario: Solución exitosa
    Dado un enlace para entrar a la página de la librería
    Entonces reviso el código fuente
    Y encuentro un script que un enlace a una lista de miembros
    Entonces copio la contraseña del miembro de la librería
    Entonces resuelvo el reto
