#!/usr/bin/python

import sys

class multiply_list:

	words_array = []
	mult1, mult2 = [], [];
	output = ""
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:
			words_array = line.strip().split('|')
			mult1 = words_array[0].strip().split(' ')
			mult2 = words_array[1].strip().split(' ')
			#print mult1
			#print mult2

			for i in range(len(mult1)):

				output += str(int(mult1[i])*int(mult2[i])) + " "

			print output[:-1]

			output = ""
			#for word in words_array:
			


x = multiply_list()