import re
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        multipliers = re.findall("\d+",stringe)
        limitop = int(len(multipliers)/2)
        total = []
        for i in range(0,limitop):
            total.append(str((int(multipliers[i])*int(multipliers[limitop+i]))))
        print (" ".join(total))