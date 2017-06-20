import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open('test.txt')

for test in test_cases:
	suma = 0
	test = test.strip()
	test = test.split("|")

	for i in range(0, len(test)):
		test[i] = test[i].strip()
	word_1 = test[0]
	word_2 = test[1]
	word_1 = word_1.replace(" ","")
	word_2 = word_2.replace(" ","")

	for i in range(0, len(word_2)):
		if word_1[i] != word_2[i]:
			suma = suma + 1

	if suma == 1 or suma == 2:
		print "Low"
	if suma == 3 or suma == 4:
		print "Medium"
	if suma ==5 or suma == 6:
		print "High"
	if suma > 6:
		print "Critical"
	if suma == 0:
		print "Done"
	

test_cases.close()
