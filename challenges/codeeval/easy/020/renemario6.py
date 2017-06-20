# -*- coding: utf-8 -*-
# python
import sys

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
		print test.lower().rstrip()

test_cases.close()
