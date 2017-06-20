#language: es

  Característica: Resolver reto 67
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo windows en su versión 7
    Y tengo acceso a internet

  Escenario: Intento fallido
    Dado el texto "LIGHTSLATEGRAY" se pide hallar su color en formato hexadecimal
    Cuando miro el codigo de la pagina
    Y me doy cuenta que el texto está entre la etiqueta <font></font>
    Y miro que dicha etiqueta tiene un color asignado
    Entonces pongo ese color como respuesta
    Y no resuelvo el reto

  Escenario: Solución exitosa
    Dado el texto "LIGHTSLATEGRAY" se pide hallar su color en formato hexadecimal
    Cuando miro el codigo de la pagina
    Y me doy cuenta que el texto está entre la etiqueta <font></font>
    Y miro que dicha etiqueta tiene una clase css referenciada
    Y examino la clase y obtengo un color
    Y pongo ese color como respuesta
    Entonces resuelvo el reto
