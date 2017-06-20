
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        nums = ([int(i) for i in stringe.split()[1::] if i.isdigit()])
        lista =[]
        for i in range(0,max(nums)):
            lista.append(sum(abs(i-j) for j in nums))
        print (min(lista))