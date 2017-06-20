#!/usr/bin/env python2
# encoding: utf-8

import itertools
import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

for test in test_cases:
    length, string = [int(i) if i.isdigit() else i for i in test.split(',')]
    print ','.join(sorted(set(''.join(i) for i in
                              (itertools.product(string, repeat=length)))))
