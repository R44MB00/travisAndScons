import sys
class CleanWords:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:
			flag = 0
			result = ""
			for c in test:
				if (c.isalpha()):
					result += c.lower()
					flag = 1
				elif (flag == 1):
					result += " "
					flag = 0
			print(result)