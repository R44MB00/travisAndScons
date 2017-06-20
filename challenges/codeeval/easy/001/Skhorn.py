#!/usr/bin/python
"""Sample code to read in test cases:
import sys

with open(sys.argv[1], 'r') as test_cases:
	for test in test_cases:
		# ignore test if it is an empty line
		# 'test' represents the test case, do something with it
		# ...
		# ...
"""
import sys

class fizz_buzz:
 	
 	line_in_file = ""
 	fizz_buzz_result = ""
 	concat = ""
 	first_divider = []
 	second_divider = []
 	count = []

	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:

			if not test.strip():
				continue

			line_in_file = test.strip().split(' ')
			first_divider.append(int(line_in_file[0]))
			second_divider.append(int(line_in_file[1]))
			count.append(int(line_in_file[2]))

	for i in range(len(count)):

		concat = ""
		for j in range(count[i]+1):

			if j is 0:
				continue

			if j%first_divider[i] == 0 and j%second_divider[i] != 0:
				
				fizz_buzz_result = 'F'

			elif j%second_divider[i] == 0 and j%first_divider[i] != 0:

				fizz_buzz_result = 'B'

			elif j%first_divider[i] == 0 and j%second_divider[i] == 0:

				fizz_buzz_result = 'FB'

			else:
				fizz_buzz_result = str(j)
			
			if j == count[i]:
				concat += fizz_buzz_result + '\n'
			else:
				concat += fizz_buzz_result + ' '

		print concat

x = fizz_buzz()
