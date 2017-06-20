
import sys
import re

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stri = str(test.strip())
        points = re.findall("[-+]?\d+[\.]?\d*", stri)
        x1 = int(points[0])
        y1 = int(points[1])
        x2 = int(points[2])
        y2 = int(points[3])
        d = (((x2-x1)**2)+(y2-y1)**2)**(0.5)
        print (int(d))
