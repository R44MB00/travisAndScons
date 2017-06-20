
import sys
test_cases = open(sys.argv[1], 'r')
for line in test_cases:
    
    line = line.strip()
    
    group = line.split(";")[1]
    numbers = line.split(";")[0].split(",")

    nuevo = []

    count = 0
    tam = len(numbers) // int(group)
    while(count<tam):
        ini = count*int(group)
        fin = (count + 1)*int(group)
        nuevo = nuevo + list(reversed(numbers[ini:fin]))
        count = count + 1

    if(len(nuevo) != len(numbers)):
        pos = count*int(group)
        nuevo = nuevo + numbers[pos::]

    cadena = ",".join(nuevo)

    print(cadena)

test_cases.close()
