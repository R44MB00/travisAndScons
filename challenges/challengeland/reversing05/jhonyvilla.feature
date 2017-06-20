#language: es

  Característica: Resolver reto Reversing 5
    Del sitio challengeland.co
    Con mi usuario LordJhony

  Antecedentes:
    Dado que estoy registrado en el sitio challengeland.co
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo el programa ollydbg instalado

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
    Y veo que el valor ingresado se encripta
    Y se compara con un texto encriptado
    Y descifro el texto
    Entonces resuelvo el reto
