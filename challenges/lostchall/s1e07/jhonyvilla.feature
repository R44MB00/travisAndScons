#language: es

  Característica: Resolver reto Challenge S1E07
    Del sitio lost-chall.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio lost-chall
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
	Y tengo instalada en mi móvil la app Guitar Tuner

  Escenario: Solución exitosa
    Dada una página web con un archivo de audio
    Y se pide encontrar la solución al reto
    Cuando veo el código fuente de la página
    Y entre los comentarios dice que la respuesta comienza por F
    Y sé que F es la nota musical fa
    Cuando uso la aplicación movil al momento de reproducir el audio
    Y esta me muestra cuales son las notas que suenan
    Entonces resuelvo el reto
