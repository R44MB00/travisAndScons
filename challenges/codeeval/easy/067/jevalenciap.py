import sys

with open(sys.argv[1], 'r') as input:
    lineas = input.read().strip().splitlines()

a= len(lineas)
for i in range (0 , a):
        m= int((lineas[i]), 16)
        print m
