"""Program to know if a point is in a circle"""
import re
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        data = re.findall(r"-?\d+\.?\d*", line)
        centerX = float(data[0])
        centerY = float(data[1])
        radius = float(data[2])
        pointX = float(data[3])
        pointY = float(data[4])
        distance = (pointX - centerX) ** 2 + (pointY - centerY) ** 2
        radsquared = radius ** 2
        if distance < radsquared:
            print "true"
        else:
            print "false"
            