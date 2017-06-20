import sys

#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")


for test in test_cases:
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	suma = ""
	test = test.strip()
	test = test.replace(" ","")
	for i in test:
		i = i.lower()
		if i in alphabet:
			alphabet = alphabet.replace(i,"")

	if len(alphabet) == 0:
		print ("NULL")
	else:
		print (alphabet)
test_cases.close()
