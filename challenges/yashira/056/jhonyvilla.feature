#language: es

  Característica: Resolver reto 56
    Del sitio yashira.org
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio yashira
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y tengo instalado Microsoft Access en su versión 2010
    Y tengo instalado Microsoft Excel en su versión 2010

  Escenario: Solución exitosa
    Dado un archivo .mdb
    Y se pide encontrar el cliente con el mayor número de pedidos
    Cuando abro el documento en access para examinarlo
    Y me doy cuenta que hay infinidad de clientes con infinidad de pedidos
    Y como no sé como realizar consultas sql en access
    Entonces exporto la tabla pedidos a excel
    Cuando hago una sumatoria de la cantidad de veces que se repite un IdCliente
    Y encuentro el que más se repite
    Y busco su nombre en la tabla clientes
    Entonces resuelvo el reto
