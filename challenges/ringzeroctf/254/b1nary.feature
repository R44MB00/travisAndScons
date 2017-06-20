# language: es

Característica: obtener acceso ingresando la contraseña
  Del reto php fairy
  Del sitio ringzer0teamctf
  Con mi usuario b1nary

  Antecedentes:
    Dado una página un campo para ingresar una contraseña
    Y el código fuente de php que valida la contraseña
    
  Escenario: Primer intento fallido
    Dada una pagina
    Cuando leo el código fuente
    Y veo que es vulnerable a php type juggling
    Y veo que el hash que se requiere para ingresar es 0e463854177790028825434984462555
    Y intento ingresar 0 como contraseña
    Y veo que sale el mensaje de "Contraseña incorrecta"
    Entonces no soluciono el reto
    Pero concluyó que debo leer nuevamente el código fuente para ver porque no funciona
    
  Escenario: Solucion
    Dada una pagina vulnerable a php type juggling
    Cuando leo nuevamente el código fuente
    Y veo que se evalúa también la longitud de la contraseña que yo envío
    Y ingreso como contraseña 00000000000000000000000000000000
    Entonces obtengo acceso y logro solucionar el reto
