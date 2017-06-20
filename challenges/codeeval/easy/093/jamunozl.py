#!/usr/bin/env python2
# encoding: utf-8

import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

for test in test_cases:
    print ' '.join((i[0].capitalize() + i[1:] for i in test.split()))
