import sys
infile = open(sys.argv[1],'r')
try:
	for line in infile:
		row = set([int(i) for i in line.split(',')])
		result = list(row)
		result.sort()
		result=[str(i) for i in result]
		print ','.join(result)
finally:
	infile.close()
