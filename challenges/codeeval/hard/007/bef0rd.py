import sys

def suma(a,b):
	return (a + b)

def mult(a,b):
	return (a * b)
	
def div(a,b):
	return (a / b)
	
with open(sys.argv[1], 'r') as input:
    test_case = input.read().strip().splitlines()

op = {  '+': suma,  '*': mult, '/': div  }
for test in test_case:
    x = test.split()
    pila = []
    for i in x[::-1]:
        if i not in op:
            pila.append(int(i))
        else:
            a = pila.pop()
            b = pila.pop()
            result = op[i](a, b)
            pila.append(result)
    print int(round(pila.pop()))
