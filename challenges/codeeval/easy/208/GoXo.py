import sys
import re
class MaxScore:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:

			participant = test.split("|")
			num_cat= len(participant[0].strip().split(" "))
			result = []
			just_nums = re.findall("[-+]?\d+", test)
			#print(just_nums)
			maxi = -1000

			for i in range(0,num_cat):

				for j in range (0,len(participant)):

					n = int(just_nums[(j*num_cat)+i])
					if ( n > maxi):
						maxi = n;
			
				result.append(str(maxi))
				maxi = -1000;
			
			print(" ".join(result))