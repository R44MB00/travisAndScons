import sys
import string

#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")

def findPos(char):

	mapa = list("ynficwlbkuomxsevzpdrjgthaq")
	for i in range(0, len(mapa)):
		if mapa[i] == char:
			return (i)


mensaje = list(string.ascii_lowercase)
for test in test_cases:
	array = []
	test = (test.strip().split(" "))
	for i in test:
		suma = ""
		for x in i:
			suma = suma + str(mensaje[findPos(x)])
		array.append(suma)

	print (' '.join(array))

test_cases.close()

