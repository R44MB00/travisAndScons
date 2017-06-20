#language: es

  Característica: Resolver reto 155
    Del sitio Yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira.org
    Y tengo por sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Primer intento fallido
    Dada una secuencia de simbolos compuestos por lineas
    Y puntos ademas esos simbolos representan un mensaje cifrado
    Cuando busco información sobre cifrados que usen esos simbolos
    Y encuentro que el cifrado Francmasón o pigpen se acomoda perfectamente
    Y busco la equivalencia del alfabeto pigpen al alfabeto normal
    Cuando empiezo a sustituir los simbolos por su equivalente
    Y encuentro que hay algunos símbolos que no existen
    Entonces no resuelvo el reto
    Pero concluyo que debo completar los símbolos inexistentes

  Escenario: Segundo intento fallido
    Dada una secuencia de simbolos compuestos por lineas
    Y puntos ademas esos simbolos representan un mensaje cifrado
    Cuando busco información sobre cifrados que usen esos simbolos
    Y encuentro que el cifrado Francmasón o pigpen se acomoda perfectamente
    Y busco la equivalencia del alfabeto pigpen al alfabeto normal
    Cuando empiezo a sustituir los simbolos por su equivalente
    Y encuentro que hay algunos símbolos que no existen
    Y completo esos simbolos para que formen una determinada letras
    Cuando tengo todo el texto traducido
    Y me doy cuenta que no tiene ningun sentido
    Entonces no resuelvo el reto
    Pero concluyo que tal vez el texto obtenido está cifrado

  Escenario: Tercer intento fallido
    Dada una secuencia de simbolos compuestos por lineas
    Y puntos ademas esos simbolos representan un mensaje cifrado
    Cuando busco información sobre cifrados que usen esos simbolos
    Y encuentro que el cifrado Francmasón o pigpen se acomoda perfectamente
    Y busco la equivalencia del alfabeto pigpen al alfabeto normal
    Cuando empiezo a sustituir los simbolos por su equivalente
    Y tengo todo el texto traducido
    Y me doy cuenta que no tiene ningun sentido
    Cuando trato de descifrar ese texto usando varios métodos de cifrado conocidos
    Y no encuentro nada coherente
    Entonces no resuelvo el reto
    Pero conluyo que tal vez usando otra tecnica de descifrado

  Escenario: Último intento fallido
    Dada una secuencia de simbolos compuestos por lineas
    Y puntos ademas esos simbolos representan un mensaje cifrado
    Cuando busco información sobre cifrados que usen esos simbolos
    Y encuentro que el cifrado Francmasón o pigpen se acomoda perfectamente
    Cuando uso el sistema de descifrado de analisis de frecuencia
    Y determino cuales son los simbolos que mas se repiten
    Y por tanto equivalen a las letras que mas se repiten en el alfabeto
    Cuando reemplazo los simbolos por esas letras
    Y no obtengo nada logico
    Entonces no resuelvo el reto
    Pero concluyo que el analisis me puede servir para encontrar un patron

  Escenario: Solución exitosa
    Dada una secuencia de simbolos compuestos por lineas
    Y puntos ademas esos simbolos representan un mensaje cifrado
    Cuando busco información sobre cifrados que usen esos simbolos
    Y encuentro que el cifrado Francmasón o pigpen se acomoda perfectamente
    Cuando uso el sistema de descifrado de analisis de frecuencia
    Y determino cuales son los simbolos que mas se repiten
    Cuando analizo los simbolos
    Y encuentro que hay uno que solo aparece una vez
    Y está precedido de dos símbolos iguales
    Cuando determino basado en el analisis de frecuencia que esos simbolos equivalen a ssw
    Y por tanto solo pueden formar la palabra password
    Y reemplazo los simbolos correspondientes en el texto cifrado por las letras halladas
    Cuando obtengo posibles nuevas palabras
    Y repito el paso anterior
	Y obtengo la contraseña que entrega el cifrado
    Entonces resuelvo el reto
