#language: es

  Característica: Resolver reto 18
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo netbeans instalado en su version 8

  Escenario: Solución exitosa
    Dada una página web que requiere una contraseña
    Cuando veo el código fuente de esta
    Y me doy cuenta que llama a una función de JavaScript
    Y analizo dicha función
    Y me percato que la contraseña solicitada es un número de 5 dígitos, cuya suma de dígitos es 33
    Y además el número ingresado hace determinada operación matemática
    Entonces escribo un programa en java que me de un número que cumpla esas caractericas
    Entonces habré resuelto el reto
