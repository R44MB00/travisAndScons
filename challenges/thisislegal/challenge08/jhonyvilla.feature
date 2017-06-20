#language: es

  Característica: Resolver reto Challenge 8
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa OllyDBG

  Escenario: Solución exitosa
    Dada una aplicación .exe que pide un usuario y una contraseña
    Cuando la abro con OllyDBG
    Y busco las instrucciones correspondientes
    Y encuentro el salto de instrucción JNZ que valida los datos
    Y hago assamble con 'NOP'
    Y compilo el programa
    Entonces resuelvo el reto
