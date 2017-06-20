import sys
import re
import math
class Distance:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:
			line = re.findall('[-+]?\d+', test)
			d = math.sqrt(math.pow((int(line[0])-int(line[2])), 2)
				+math.pow((int(line[1])-int(line[3])), 2))
			print(int(d))
