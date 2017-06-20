from __future__ import division
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test=test.replace("^","**")
    res=eval(test)
    if res-int(str(res)[:str(res).find(".")])==0 or str(res).find(".")==-1:
        print(int(res))
    else:
        print("%.5f" % res)
test_cases.close()
