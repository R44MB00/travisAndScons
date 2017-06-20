import sys
import math 

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    d=int(test[:test.find(".")])
    m=str((float(test)-d)*60)
    m=int(m[:m.find(".")])
    s=float((float(test)-d)*60)-m
    s=str(s*60)[:str(s*60).find(".")]
    print str(d).zfill(1)+"."+str(m).zfill(2)+"'"+str(s).zfill(2)+'"'
    
test_cases.close()
