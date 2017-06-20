#language: es

  Característica: Resolver reto Realistic 5
    Del sitio thisislegal.com
    Con mi usuario LordJhony

  Antecedentes:
    Dado estoy registrado en el sitio thisislegal.com
    Y tengo el sistema operativo Windows en su versión 7
    Y tengo acceso a internet

  Escenario: Solución exitosa
    Dado un sitio web de una empresa de venta de productos
    Y se pide mirar su seguridad
    Cuando miro el codigo fuente del index
    Y veo que hay una página products.html
    Y un formulario que me envía a adm/srch/
    Cuando miro products.html veo que tiene 2 enlaces hacia la misma página
    Y esa página es details.php
    Y en adm/srch intento acceder directamente a adm/
    Y muestra un area restringida que requiere autenticación
    Cuando miro el codigo fuente de details veo una función javascript
    Y que al parecer carga las imagenes de los productos
    Y ademas hace referencia a una pagina llamada i.php
    Y esa página usa una variable llamada img
    Y esa variable carga un archivo
    Cuando intento logearme en adm/ me muestra un error de autenticación
    Y esa autenticación se hace contra el archivo login.pwd
    Y procedo a ingresar a la i.php
    Y para el valor de img pongo la ruta del archivo login.pwd
    Y obtengo un usuario y contraseña encriptada
    Cuando desencripto la contraseña
    Y uso las credenciales en adm/
    Entonces resuelvo el reto
