#!/usr/bin/python

import sys

class first_non_repeated:

	words_array = []
	count = 0
	#file = open('test', 'r')
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:

			words_array = line

			for i in words_array:
				for j in words_array:
					if i is j:
						count += 1

				if count == 1:
					print i
					count = 0
					break
				else:
					count = 0
x = first_non_repeated()
	