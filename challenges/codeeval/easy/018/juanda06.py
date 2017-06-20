import sys

file =  open(sys.argv[1],'r')
try:
	for line in file:
		threshold, num = map(int, line.split(','))
		tester = 1
		while True:
			if threshold<=num*tester:
				print num*tester
				break
			else:
				tester += 1
finally:
	file.close()
