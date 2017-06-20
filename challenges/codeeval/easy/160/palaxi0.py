
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        mins,secs = divmod(float(test)*3600,60)
        degr,mins = divmod(mins,60)
        print ("%d.%02d'%02d\"" % (degr,mins,secs))

