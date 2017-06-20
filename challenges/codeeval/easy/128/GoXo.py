import sys
class compressed_sequence:

	with open(sys.argv[1], 'r') as test_cases:

		for line in test_cases:
			nums = list(line.strip().split(" "))
			res = list()
			count = 1
		
			for i in range (1, len(nums)):

				if (nums[i] != nums[i-1]):

					res.append(str(count))
					res.append(nums[i-1])
					count = 1

				else:	
					count += 1

			res.append(str(count))
			res.append(nums[len(nums)-1])

 			print " ".join(res)