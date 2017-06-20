#!/usr/bin/python

import sys

class sum_int_files:

	sum_int = 0
	#file = open('test','r')
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:
		#for line in file:

			sum_int += int(line)

		print sum_int
	
x = sum_int_files()