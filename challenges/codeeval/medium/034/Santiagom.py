import sys

with open(sys.argv[1], 'r') as test_cases:
#with open('sample.txt', 'r') as test_cases:
    for test in test_cases:
    	x = int(test.split(";")[1])
    	nums = test.split(";")[0].split(",")
    	for i in range(0, len(nums)):
    		nums[i] = int(nums[i])
    	temp = nums
    	values = []
    	for i in nums:
    		for j in temp:
    			if (i+j) == x:
    				values.append(str(i)+","+str(j))
    				temp.remove(j)
    	if len(values) > 0:
    		print (';'.join(values))
    	else:
    		print ("NULL")
