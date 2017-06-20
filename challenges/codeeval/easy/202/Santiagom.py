import sys

#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")


for test in test_cases:
	test = test.split()
	mayor = len(test[0])
	word = test[0]
	for i in test:
		if len(i) > mayor:
			mayor = len(i)
			word = i

	word = list(word)
	suma = ""
	for i in range(0, len(word)):
		n = i
		for x in range(0, n):
			suma = suma + "*"
		suma = suma + word[i] + " "

	print (suma.strip())



test_cases.close()
