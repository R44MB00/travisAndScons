from __future__ import division
import sys 
import math 

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    exp=test.replace("^","**").replace("mod","%").replace("ln","math.log").replace("lg","math.log10").replace("e","math.e").replace("Pi","math.pi").replace("|","").replace("!","")
    exp=exp.replace("sin","math.sin").replace("cos","math.cos").replace("tan","math.tan").replace("sqrt","math.sqrt")
    print "%.5f" % eval(exp)
test_cases.close()
