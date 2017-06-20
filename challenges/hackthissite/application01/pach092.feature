# language: es

Característica: Resolver application 1
  Del sitio hackthissite
  De la categoría application
  Con mi usuario pacho92

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite
    Y tengo el sistema operativo Windows versión 10
    Y tengo acceso a internet
    Y he resuelto el reto application 1

  Escenario: Solución exitosa
    Dado un programa con serial
    Entonces por medio de un HexEditor reviso la aplicación
    Y busco autenticación
    Entonces encuentro varios seriales
    Entonces resuelvo el reto
