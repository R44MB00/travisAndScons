
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        part1 = stringe.split(",")[0]
        part2 = stringe.split(",")[1]
        count =0
        for i in range(1,len(part2)+1):
            if len(part1) >= len(part2):
                if part2[-i]==part1[-i]:
                    count= 1
                else:
                    count= 0
        print (count)