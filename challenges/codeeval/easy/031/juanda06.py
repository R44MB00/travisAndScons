import sys
infile = open(sys.argv[1],'r')
try:
	for line in infile:
		string, character = line.split(',')
		if character.rstrip('\n') not in string:
			print '-1'
		else:
			for i in xrange(len(string)):
				if string[i]== character.rstrip('\n'):
					print i
					break
finally:
	infile.close()
