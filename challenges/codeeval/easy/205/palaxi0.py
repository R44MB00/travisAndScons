
import sys
import re
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        print (" ".join(re.findall("[a-z]+",test.strip().lower())))
