#!/usr/bin/python

import sys

class swap_case:
 	
 	line_in_file = ""
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:

			word = ""
			line_in_file = line.strip().split(' ')
			for pos in line_in_file:
				
				for i in range(len(pos)):

					if pos[i].islower():
						word += pos[i].upper()

					elif pos[i].isupper():
						word += pos[i].lower()

					else:
						word += pos[i]

				word += " "	

			print word[:-1]

			#print line_in_file


x = swap_case()





