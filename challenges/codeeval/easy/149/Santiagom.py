import sys,string

test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')

for test in test_cases:
	test = test.split(" ")
	for i in range(0, len(test)):
		test[i] = test[i].strip()

	suma = ""
	for i in range(0, len(test),2):
		if test[i] == "00":
			suma = suma + "1"*len(test[i+1])
		if test[i] == "0":
			suma = suma + (test[i+1])

	
	print (int(suma, 2))
test_cases.close()
