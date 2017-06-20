#language: es

  Característica: Resolver reto Reversing 1
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa ollydbg instalado

  Escenario: Intento fallido
    Dada una aplicación .exe
    Y se pide encontrar el serial correcto
    Cuando la examino usando ollydbg
    Y encuentro la instrucción de salto
    Y hago un ensamble a dicha instrucción
    Entonces no resuelvo el reto
    Pero concluyo que debo encontrar con que se compara el serial

  Escenario: Solución exitosa
    Dada una aplicación .exe
    Y se pide encontrar el serial correcto
    Cuando la examino usando ollydbg
    Y encuentro la instrucción de salto
    Y veo que antes de esta se llama algo
    Y hago un breakpoint en esa llamada
    Y hago un debug a la aplicación
    Cuando ingreso un valor cualquiera de serial
    Y la aplicación llega al breakpoint
    Y veo que el valor ingresado se compara con un texto
    Y pongo ese texto como respuesta
    Entonces resuelvo el reto
