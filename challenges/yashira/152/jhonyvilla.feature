#language: es

  Característica: Resolver reto 152
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo netbeans instalado en su versión 8

  Escenario: Solución exitosa
    Dada una secuencia de números
    Y esa secuencia corresponde a un mensaje encriptado
    Cuando investigo sobre métodos de cifrado clasico
    Y que usen numeros para cifrar mensajes
    Y encuentro que hay un método que toma el valor númerico de una letra
    Y lo compara con el módulo de un número para cifrar el texto
    Cuando programo en java una aplicación que me permita invertir el método de cifrado
    Y obtengo el mensaje decodificado
    Entonces resuelvo el reto
