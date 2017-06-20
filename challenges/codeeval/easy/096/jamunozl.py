#!/usr/bin/env python2
# encoding: utf-8
import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

for test in test_cases:
    print ' '.join((i.swapcase() for i in test.split()))
