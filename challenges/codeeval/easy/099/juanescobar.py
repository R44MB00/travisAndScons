import re
import sys
import math

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    # ignore test if it is an empty line
    # 'test' represents the test case, do something with it
    # ...
    # ...
    data = test.strip().split(") (")
    x = data[0]
    y = data[1]
    
    x1 = int(re.search(r'\((.*),', x).group(1))
    y1 = int(re.search(r', (.*)', x).group(1))

    x2 = int(re.search(r'(.*),', y).group(1))
    y2 = int(re.search(r', (.*)\)', y).group(1))

    d = math.sqrt(((x2-x1)**2)  + ((y2-y1)**2))
    print int(d)

test_cases.close()
