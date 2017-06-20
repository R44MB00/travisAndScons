#!/usr/bin/python

import sys

class sum_digits:

	#file = open('test', 'r')
	sum_dig = 0
	with open(sys.argv[1], 'r') as test_cases:

		for line in test_cases:
			
			for i in range(len(line)):

				if line[i] == '\n':
					break
				sum_dig += int(line[i])

			print sum_dig
			sum_dig = 0



x = sum_digits()