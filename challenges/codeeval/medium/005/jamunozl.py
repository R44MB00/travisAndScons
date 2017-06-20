#!/usr/bin/env python2
# encoding: utf-8

import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()


for test in test_cases:
    sequence = [int(i) for i in test.split()]
    seq_length = len(sequence)

    
    x, y = 0, 1
    while sequence[x] != sequence[y]:
        x = (x + 1) % seq_length
        y = (y + 2) % seq_length

    
    begin = 0
    y, x = abs(y - x), 0
    while sequence[x] != sequence[y]:
        x = (x + 1) % seq_length
        y = (y + 1) % seq_length
        begin += 1

    
    length, y = 1, x + 1
    while sequence[x] != sequence[y]:
        y += 1
        length += 1

    print ' '.join(str(i) for i in sequence[begin:begin + length])
