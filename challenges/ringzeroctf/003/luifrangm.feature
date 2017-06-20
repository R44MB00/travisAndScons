# language: es

Característica: sqlinjection
  Del sitio ringzer0team
  De la categoría sqlinjection
  Con mi usuario luifrangm

  Antecedentes:
    Dado estoy registrado en el sitio ringzer0team
    Y tengo el sistema Windows 7
    Y tengo acceso a internet
	
  Escenario: Solución exitosa
    Dado un formulario de login
    Entonces intento varias opciones de inyeccion de codigo sql
	Y arroja un mensaje de caracteres ilegales
	Entonces pruebo sin signo =
	Y la instruccion es: luifrangm' or 1 < 2 or'
	Entonces arroja una bandera FLAG-4f885o1dal0q1huj6eaxuatcvn
	Y el reto es solucionado.
