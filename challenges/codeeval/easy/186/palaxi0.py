import re
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        rang = int(test.strip().split(";")[0])
        nums = re.findall("-?\d+",test.strip().split(";")[1])
        tot = [int(i) for i in nums]
        lista=[]
        for i in range(0,len(tot)-rang+1):
                lista.append(sum([j for j in tot[i:i+rang]]))
        print (max([i if i>0 else 0 for i in lista]))
