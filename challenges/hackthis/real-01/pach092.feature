# language: es

Característica: Resolver reto 1
  Del sitio hackthis
  De la categoría Real
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthis
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto Real 1

  Escenario: Solución exitosa
    Dado un enlace para entrar a un email
    Entonces revisando en la carpeta de eliminados encuentro un archivo con una contraseña
    Y en carpeta recibidos un enlace para ingresar a una página web
    Entonces copio la contraseña del correo eliminado
    Entonces resuelvo el reto
