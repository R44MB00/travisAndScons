import sys
class Words_nums:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:
			words = list()
			nums = list()
			val = test.strip().split(",")
			for s in val:
				if s.isdigit():
					nums.append(s)
				else:
					words.append(s)
			sep = "|"		
			if not words:
				sep = ""
			if not nums:
				sep = ""		
			print (",".join(words)+sep+",".join(nums)) 