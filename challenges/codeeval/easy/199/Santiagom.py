
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
	test = test.split()
	word = list(test[0])
	bin = list(test[1])
	for i in range(0, len(bin)):
		if (bin[i] == '1'):
			word[i] = word[i].upper()

	print (''.join(word))

	

test_cases.close()
