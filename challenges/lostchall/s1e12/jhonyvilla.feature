#language: es

  Característica: Resolver reto Challenge S1E12
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dada una página web con una imagen de un maletín con varias letras
    Y se pide encontrar la clave para abrir dicho maletín
    Cuando veo el código fuente de la página
    Y entre los comentarios encuentro una pista
    Y esa pista es la ruta de otra imagen
    Cuando abro la otra imagen
    Y veo que esta tiene marcas que corresponden a letras específicas de la imagen del maletín
	Cuando estraigo las letras
    Y las ordeno de tal manera que forman una palabra
    Entonces resuelvo el reto
