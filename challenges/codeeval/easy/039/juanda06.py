def happy(num):
	line = [int(i) for i in str(num)]
	result = 0
	for x in line:
		result += x**2
	return result



import sys
infile = open(sys.argv[1],'r')
try:
	for line in infile:
		result = 0
		process = []
		line = int(line)
		while True:
			if line!=1:
				if line not in process:
					process.append(line)
					line = happy(line)
				else:
					result =0
					break
			else:
				result = 1
				break
		print result

finally:
	infile.close()
