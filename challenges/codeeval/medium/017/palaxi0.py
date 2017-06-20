import sys
import re
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        nums = [int(i) for i in re.findall("-?\d+",stringe)]
        sumsubs = []
        if len(nums)>1:
            for i in range(0, len(nums)):
                for j in range(i,len(nums)):
                    sumsubs.append(sum(nums[i:j+1]))
            print (max(sumsubs))
        elif len(nums) == 1:
            print(nums[0])
       