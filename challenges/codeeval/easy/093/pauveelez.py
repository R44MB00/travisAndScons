#!/usr/bin/python
import os
import sys


fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			inte = line.split()[0][0]
			if inte.isdigit():
				letter = line.split( )
				first = letter.pop(0)
				lineO = " ".join(letter)
				print first + " " + lineO.title()
			else:
				print line.title()
