# Alexander Botero
import sys
from string import ascii_lowercase, ascii_uppercase

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()

for test in testing:
    length = len(test)
    lower = (sum(1 for l in test if l in ascii_lowercase) * 100.0) / length
    upper = (sum(1 for l in test if l in ascii_uppercase) * 100.0) / length
    print "lowercase: {0:.2f} uppercase: {1:.2f}".format(lower, upper)
