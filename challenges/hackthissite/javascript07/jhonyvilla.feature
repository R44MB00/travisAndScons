#language: es

  Característica: Resolver reto Javascript 7
    Del sitio hackthissite.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio hackthissite.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una pagina web se pide encontrar una contraseña
    Y esa contraseña se comprueba con una función en javascript
    Cuando examino el código fuente
    Y encuentro la función
    Y esa función es un monton de código que no entiendo
    Cuando veo la pista js obfuscation
    Y consulto sobre eso
    Y busco una herramienta online que me permita descifrar el código
    Cuando uso http://www.dcode.fr/javascript-unobfuscator
    Y veo que el resultado son numeros decimales
    Y convierto esos decimales a ASCII
    Y veo la contraseña
    Entonces resuelvo el reto
