#language: es

  Característica: Resolver reto 157
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo netbeans instalado en su versión 8

  Escenario: Solución exitosa
    Dado un texto encriptado
    Cuando identifico que fue encriptado usando cifrado Trithemius
    Y programo en java una aplicación que me permita descencriptar este tipo de cifrado
    Entonces habré resuelto el reto
