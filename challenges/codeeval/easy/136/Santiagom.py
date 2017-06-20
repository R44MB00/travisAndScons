import sys
#with open(sys.argv[1], 'r') as test_cases:
with open('sample.txt', 'r') as test_cases:
	index = 0
	for test in test_cases:

		position = test.find("C")
		if position == -1:
			position = test.find("_")

		if index == 0:
			test = test.replace(test[position],"|")
			index = position

		if position < index:
			test = test.replace(test[position], "/")
		if position == index:
			test = test.replace(test[position], "|")
		if position > index:
			test = test.replace(test[position], "\\")
		#print (test,end='')
		sys.stdout.write(test)
		index = position
"""
#########|## #########|##
########/_## ########/_##
#######/#### #######/####
######_#\### ######_#\###
#######_|### #######_|###
#######/#### #######/####
######/#_### ######/#_###
######|_#### ######|_####
#######\#### #######\####
#######|#### #######|####
"""








