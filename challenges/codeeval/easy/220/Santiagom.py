import sys
import math
#test_cases = open(sys.argv[1], 'r')
test_cases = open('test.txt')

for test in test_cases:

	test = test.strip()
	test = test.split(",")
	vampires = test[0].split(":")[1].strip()
	zombies = test[1].split(":")[1].strip()
	witches = test[2].split(":")[1].strip()
	houses = test[3].split(":")[1].strip()
	total = int(vampires) +  int(zombies) + int(witches) 
	suma = 0
	for i in range(0, int(houses)):
		suma = 3*int(vampires) + 4*int(zombies) + 5*int(witches) + suma
	print (suma/total)
test_cases.close()
