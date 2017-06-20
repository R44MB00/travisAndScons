#!/usr/bin/python

class lost_in_translation:

	output = ""
	file = open('test', 'r')
	alpha_dict = {'a': 'y', 
		'b': 'n',
		'c': 'f',
		'd': 'i',
		'e': 'c',
		'f': 'w',
		'g': 'l',
		'h': 'b',
		'i': 'k',
		'j': 'u',
		'k': 'o',
		'l': 'm',
		'm': 'x',
		'n': 's',
		'o': 'e',
		'p': 'v',
		'q': 'z',
		'r': 'p',
		's': 'd',
		't': 'r',
		'u': 'j',
		'v': 'g',
		'w': 't',
		'x': 'h',
		'y': 'a',
		'z': 'q'}

	words = []
	#with open(sys.argv[1], 'r') as test_cases:
		#	for line in test_cases:
	for line in file:
		#print line

		for i in range(len(line)):

			if line[i] == ' ':
				output += ' '

			for k,v in alpha_dict.items():

				if v == line[i]:
					output += k


		print output
		output = ""


		#words = line.strip().split(' ')


		


x = lost_in_translation()