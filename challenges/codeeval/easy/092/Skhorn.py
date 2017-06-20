#!/usr/bin/python

import sys

class penultimate_word:

	words_array = []
	new_word = ""
	count = 0
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:
			words_array = line.split(' ')
			print words_array[len(words_array)-2]
		#for word in words_array:
			


x = penultimate_word()