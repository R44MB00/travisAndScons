"""Conversion de fahrenheit a celsius"""

VALORES = input("Ingrese los valores: ")
FAHRENHEIT = VALORES.split()

TOTAL = []

for valor in FAHRENHEIT:
    valor = int(valor)
    CELSIUS = round((valor - 32)*5/9)
    TOTAL.append(int(CELSIUS))

print TOTAL
