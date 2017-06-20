import sys
import string

#test_cases = open(sys.argv[1], 'r')

test_cases = open('test.txt')
for test in test_cases:
	test = test.strip()
	suma = ""
	for i in test:
		if i in string.ascii_lowercase or i in string.ascii_uppercase:
			suma = suma + i
		else:
			suma = suma + " "

	suma = suma.split(" ")
	word = ""
	for i in suma:
		if i not in "":
			word = word + i + " "

	print (word.strip())

test_cases.close()
