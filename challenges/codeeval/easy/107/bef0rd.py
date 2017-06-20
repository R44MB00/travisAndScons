
import sys
import re
def repetitions(s):
   r = re.compile(r"(.+?)\1+")
   for match in r.finditer(s):
       yield (match.group(1), len(match.group(0))/len(match.group(1)))
       
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    x = list(repetitions(test))
    if (len(x) == 0):
        print len(test)
    else:
        print len(x[0][0])
