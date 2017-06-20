# language: es

Característica: resolver reto 8
  Sin utilización de código
  Del sitio hackthissite.org
  De la categoría Realistic
  Con mi usuario Goso

  Antecedentes:
    Dado que estoy Registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Ubuntu 14.04
    Y tengo a la mano un plugin para editar cookies
    Y tengo acceso a internet utilizando mozilla firefox

  Escenario: Primer intento fallido
    Dado un campo para registrarse
    Y un campo para Logear
    Y un campo para mostrar todos los usuarios posibles
    Cuando intento hacer todas las posibles inyecciones SQL
    Y solo funcionan en el campo para mostrar usuarios
    Entonces veo el usuario objetivo
    Pero no puedo entrar con este usuario ni logearme con el

  Escenario: Último intento fallido
    Dado un campo para registrarse
    Cuando intento hacer inyección XSS en la parte de descripción
    Y veo que las inyecciones XSS están bien filtradas
    Entonces no resuelvo el reto
    Pero concluyo que el reto tiene que ver con la utilización de cookies

  Escenario: Solución exitosa
    Dado un campo de registro y me registro
    Y veo la implementación de dos cookies
    Cuando cambio con un editor de cookies el valor de mi nombre de usuario
    Y lo cambio por el nombre del objetivo
    Y puedo hacer la transferencia de dinero manipulando esta cookie
    Y también puedo limpiar el "Log" mediante el botón de borrar archivos
    Y cambiando el parámetro "<nombre>SQLFiles" por "LogFiles"
    Y todo esto con el valor de la cookie editada
    Entonces solucionaré este reto
