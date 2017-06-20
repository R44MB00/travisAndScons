# language: es

Característica: Resolver reto Star #4
  Del sitio http://www.bqbi.net/
  De la categoría Orbis Pictus
  Con mi usuario erisohv
  
  Antecedentes:
    Dado que estoy registrado en el sitio http://www.bqbi.net/
    Y tengo el sistema operativo Linux Mint 18
    Y tengo instalado el software Chromium versión 55.0.2883.87
    Y tengo acceso a internet
    Y he resuelto el reto Star #4

  Escenario: Solución exitosa 
    Dado que estoy autenticado con mi usuario erisohv
    Y observo que la imagen tiene un evento "hover"
    Y con la herramienta de desarrolladores de Chromium inspecciono la imagen
    Y activo el "hover" de cada td en la tabla de la imagen
    Y detecto quien es el personaje
    Cuando coloco el nombre del personaje
    Entonces resuelvo el reto
