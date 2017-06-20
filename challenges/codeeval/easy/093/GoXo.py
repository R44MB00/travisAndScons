import sys
class capitalizeWords:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:
			line = list(test.strip())
			if not line[0].isupper():
				line[0] = line[0].upper()
			for i, char in enumerate(line):
				if char == ' ':
					if not line[i+1].isupper():	
						line[i+1] = line[i+1].upper()
			output = "".join(line)
			print(output)
