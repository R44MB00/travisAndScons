import sys
import re

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    print "Binary"
    print re.findall("[0-1]{31,32}",test)
    print "Doted"
    print re.findall("[0-9]{1,2,3}\.[0-9]{1,2,3}\.[0-9]{1,2,3}\.[0-9]{1,2,3}",test)
    print "Doted 2"
    print re.findall("[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*",test)
    print "Octal"
    print re.findall("[0-7]{12}",test)	
    print "Hexa"
    print re.findall("[0x[0-7]{1,2}\.]{3}[0x[0-7]{1,2}]{1}",test)	    

test_cases.close()
