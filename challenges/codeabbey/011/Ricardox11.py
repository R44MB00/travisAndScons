#!/usr/bin/env python
"""sumadigitos.py"""

RANGC = int(raw_input("Por favor digitar N: "))  # lee N valores a procesar
RESUL2 = ""

for y in range(RANGC):
    valores = raw_input("Dato %i:" % y)  # captura valores1
    valores = valores.split(" ")  # separa en cadena
    valor1 = int(valores[0])  # lee cada valor
    valor2 = int(valores[1])
    valor3 = int(valores[2])

    temporaldiv = 0
    resultado = 0
    temporal = (valor1 * valor2) + valor3   # suma valores
    nvalor = len(str(temporal))  # longitud de valores a sumar

    for i in range(nvalor):
        temporaldiv = (temporal % 10)  # usa modo para separar
        temporal = (temporal / 10)  # calcula siguiente numero
        resultado = resultado + temporaldiv  # suma cada valor

    RESUL2 = RESUL2 + " " + str(resultado)  # concatena resultados

print RESUL2.strip()  # imprime resultado total
