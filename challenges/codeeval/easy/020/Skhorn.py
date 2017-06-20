#!/usr/bin/python

import sys

class lowercase:

	new_line = ""
	#file = open('test', 'r')
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:
		#for line in file:

			new_line += line.lower()

		print new_line

x = lowercase()
	
	
