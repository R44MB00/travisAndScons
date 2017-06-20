import sys,string
def mapeo(char):

	if char == 'a':
		return 0
	if char == 'b':
		return 1
	if char == 'c':
		return 2
	if char == 'd':
		return 3
	if char == 'e':
		return 4
	if char == 'f':
		return 5
	if char == 'g':
		return 6
	if char == 'h':
		return 7
	if char == 'i':
		return 8
	if char == 'j':
		return 9
	if char.isdigit():
		return char

	return ""
test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')

for test in test_cases:
	suma = ""
	test = test.strip()

	for i in test:
		suma = suma +  str(mapeo(i))
	if len(suma) > 0:
		print (suma)
	else:
		print ("NONE")


test_cases.close()
