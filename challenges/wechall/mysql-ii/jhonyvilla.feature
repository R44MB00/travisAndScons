#language: es

  Característica: Resolver reto Mysql II
    Del sitio wechall.net
    De la categoría exploit, mysql
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio wechall.net
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet
    Y he resuelto el reto Mysql I del sitio

  Escenario: Solución exitosa
    Dada una pagina que pide username y password
    Y dan el código php de la pagina
    Y hay que logearse como admin
    Cuando estudio el codigo php
    Y encuentro la instrucción de consulta que permite el logeo
    Y me doy cuenta el password es encriptado en la función
    E investigo mas acerca de sqlinjection
    Y me doy cuenta que puedo concatenar una consulta en otra
    Y lo hago para poder que la contraseña encriptada sea evaluada
    Y uso ' UNION SELECT 1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b'  as password from users password where username='admin
    Y por password pongo 1
    Entonces resuelvo el reto
