
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        data = test.strip()
        numcompare = [i for i in range(1,int(data.split(" ")[0]))]
        nums = [int(i) for i in data.split(" ")[1::]]
        sumabs = sorted([abs(nums[i]-nums[i+1]) for i in range(0,len(nums)-1)])
        if sumabs == numcompare:
            print ("Jolly")
        else:
            print ("Not jolly")