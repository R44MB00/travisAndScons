import sys
file = open(sys.argv[1],'r')
try:
	for line in file:
		row = line.split(',')
		row_int = [int(i) for i in row]
		tested = list(bin(row_int[0]))
		if tested[-row_int[1]]==tested[-row_int[2]]:
			print 'true'
		else:
			print 'false'
finally:
	file.close()
