#!/usr/bin/python

import sys

class pangrams:

	output = ""
	alpha_dict = {'a': 0, 
	'b': 0,
	'c': 0,
	'd': 0,
	'e': 0,
	'f': 0,
	'g': 0,
	'h': 0,
	'i': 0,
	'j': 0,
	'k': 0,
	'l': 0,
	'm': 0,
	'n': 0,
	'o': 0,
	'p': 0,
	'q': 0,
	'r': 0,
	's': 0,
	't': 0,
	'u': 0,
	'v': 0,
	'w': 0,
	'x': 0,
	'y': 0,
	'z': 0}

	words = []
	with open(sys.argv[1], 'r') as test_cases:
		for line in test_cases:
			
			if line == "\n":
				continue

			words = line.strip().split(' ')
			supra_word = ""
			for word in words:
				supra_word += word
				

			for i in range(len(supra_word)):
				#print supra_word[i].lower()
				if supra_word[i].lower() in alpha_dict:
					alpha_dict[supra_word[i].lower()] = 1

			#print alpha_dict

			for k, v in sorted(alpha_dict.items()):
				if v == 0:
					output += k

			if len(output) == 0:
				print "NULL"
			else:
				print output

			output = ""
			alpha_dict = {'a': 0, 
			'b': 0,
			'c': 0,
			'd': 0,
			'e': 0,
			'f': 0,
			'g': 0,
			'h': 0,
			'i': 0,
			'j': 0,
			'k': 0,
			'l': 0,
			'm': 0,
			'n': 0,
			'o': 0,
			'p': 0,
			'q': 0,
			'r': 0,
			's': 0,
			't': 0,
			'u': 0,
			'v': 0,
			'w': 0,
			'x': 0,
			'y': 0,
			'z': 0}

x = pangrams()