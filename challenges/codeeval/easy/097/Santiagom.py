import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")

for test in test_cases:
	test = test.strip()
	test = test.split("|")
	letras = list(test[0])
	pos = test[1].strip().split(" ")

	suma = ""
	for i in range(0, len(pos)):
		suma  = suma + letras[(int(pos[i])-1)]

	print (suma)
test_cases.close()
