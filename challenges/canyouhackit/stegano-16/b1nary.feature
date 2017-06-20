# language: es

Característica: Encontrar el mensaje oculto
  Del reto steganography 16
  Del sitio canyouhack.it
  Con mi usuario b1nary

  Antecedentes:
    Dado un gif
    Y conocimientos sobre esteganografía
    Y el software stegsolve.jar
    
  Escenario: Solucion
    Dado un gif
    Cuando veo detalladamente el gif
    Y veo que hay fragmentos blancos que crean formas similares a letras
    Y utilizar stegsolve.jar para extraer los frames del gif
    Y empiezo a combinar las imágenes
    Y veo se empieza a formar un texto
    Entonces obtengo la solución a medida que voy combinando las imágenes
