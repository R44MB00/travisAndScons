#language: es

  Característica: Resolver reto 82
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado un texto se pide hallar su color en formato hexadecimal
    Cuando miro el codigo de la pagina
    Y me doy cuenta que el texto está entre la etiqueta <font></font>
    Y miro que dicha etiqueta tiene una combinación de colores asignada
    Entonces pongo como respuesta la suma hexadecimal de dicha combinación
    Y no resuelvo el reto

  Escenario: Solución exitosa
    Dado un texto se pide hallar su color en formato hexadecimal
    Cuando miro el codigo de la pagina
    Y me doy cuenta que el texto está entre la etiqueta <font></font>
    Y miro que dicha etiqueta tiene una combinación de colores asignada
    Y descargo la página en mi equipo
    Y la abro para ver los colores
    E inspecciono la etiqueta <font> del texto
    Entonces resuelvo el reto
