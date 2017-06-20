#!/usr/bin/python

import sys



class reverse_words:

	check = False
	new_string = ""
	new_chain = ""
	new_line = []
	#file = open('test', 'r')

	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:
		#for line in file:

			#print line
			
			if line == '\n':
				continue

			for i in range(len(line)):
				
				if line[i] is not ' ':
					#print line[i]
					new_string += line[i]
				if line[i] is ' ':
					new_line.append(new_string)
					new_string = ""
				if line[i] == '\n':
					new_line.append(new_string[:-1])
					new_string = ""
					#print 'hola'


			reversed_list = list(reversed(new_line))
			for i in reversed_list:
				new_chain += i+' '
			print new_chain

			new_line = []
			new_chain = ""



x = reverse_words()

