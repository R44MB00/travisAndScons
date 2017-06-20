#!/usr/bin/python

import sys

class array_absurdity:

	sum_int = 0

	length = 0
	items_dict = {}
	lines = []
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:

			words = line.strip().split(';')
			length = words[0]
			lines = words[1].split(',')

			for item in lines:

				if item in items_dict:
					print item
				else:
					items_dict[item] = item

			items_dict = {}


x = array_absurdity()