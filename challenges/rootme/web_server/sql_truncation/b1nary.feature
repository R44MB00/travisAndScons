# language: es

Característica: acceder como administrador
  Del reto sql truncation
  De la categoría Web Server
  De la página Root-Me
  Con mi usuario b1nary

  Antecedentes:
    Dado una página con un login y un formulario para registrarse
    Y he resuelto retos de sql injection
    
  Escenario: Intento fallido
    Dada una url
    Cuando leo sobre sql injection by truncation
    Y intento registrar una nueva cuenta con un nombre de una longitud de 43 caracteres
    Y la contraseña "123456789"
    Y intento logearme en la sección de administrador con la contraseña "123456789"
    Entonces no soluciono el reto
    Pero concluyo que debo leer más sobre sql injection by truncation
    
  Escenario: Solucion
    Dada una url
    Cuando intento registrarme con el nombre de usuario "admin              b1nary33"
    Y contraseña "123456789"
    Y intento logearme en la sección de administrador con la contraseña "123456789"
    Entonces logró solucionar el reto
