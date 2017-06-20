#!/usr/bin/python

import sys

class unique_elements:

	
	new_array = []
	check = False
	result = ""

	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:

			array_line = test.split(',')
			for item in array_line:

				if '\n' in item:
					if len(item) == 3:
						cleaned_char = item[0:2]
						check = True
					elif len(item) == 2:
						cleaned_char = item[0]
						check = True

				if '\n' not in item: 
					if item not in new_array:
						new_array.append(item)
				
				elif '\n' in item and cleaned_char not in new_array:
					new_array.append(cleaned_char)

				if check:
					for item in new_array:
						result += item + ','
					
					if result[len(result)-1] is ',':
						print result[:-1]
					check = False
					new_array = []
					result = ""

			
x = unique_elements()