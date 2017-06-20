import sys
file = open(sys.argv[1],'r')
try:
	for line in file:
		result = []
		row = line.split(';')
		l1 = row[0].split(',')
		l2 = row[1].split(',')
		for i in xrange(len(l2)):
			if l2[i] in l1:
				result.append(l2[i])
		print ','.join(map(str,result))
finally:
	file.close()
