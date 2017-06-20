#!/usr/bin/python

import sys, os

class file_size:

	#statinfo = os.stat('test')
	#print statinfo.st_size
	size = 0
	with open(sys.argv[1], 'r') as test_cases:

		for line in test_cases:
		#for line in file:

			size += len(line)

		print size

x = file_size()