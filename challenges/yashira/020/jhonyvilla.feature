#language: es

  Característica: Resolver reto 20
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado el programa ARCHPR en su versión 4.53
    Y tengo instalado el programa WinRar

  Escenario: Solución exitosa
    Dado un archivo rar
    Cuando descargo el archivo
    Y me doy cuenta que requiere un password para abrir el archivo
    Y uso el ARCHPR para descifrar el password
    Entonces habré resuelto el reto
