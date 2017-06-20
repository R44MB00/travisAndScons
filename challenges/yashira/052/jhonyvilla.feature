#language: es

  Característica: Resolver reto 52
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado Netbeans en su versión 8
    Y tengo instalado JAD
    Y tengo instalado WinRar

  Escenario: Solución exitosa
    Dado un archivo .jar sin mayores explicaciones
    Cuando descargo el archivo
    Y lo descomprimo usando el WinRar
    Y obtengo un archivo .class
    Y lo decompilo usando JAD
    Y obtengo un archivo .jad
    Y abro ese archivo con Netbeans
    Y veo varias instrucciones encriptadas en base64
    Y desencripto esas instrucciones usando una herramienta online
    Y esas instrucciones dicen que la respuesta al reto es la multiplicación de dos números binarios
    Cuando hago la multiplicación
    Y pongo el resultado como solución al problema
    Entonces resuelvo el reto
