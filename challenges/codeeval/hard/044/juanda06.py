#!/usr/bin/env python2
# encoding: utf-8


import itertools
import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

for test in test_cases:
    num, string = int(test), test
    goal = 0
    while not goal:
        guesses = [
            int(i) for i in sorted(
                set(
                    [''.join(i) for i in itertools.permutations(string)]
                )
            )
        ]
        valids = [i for i in guesses if i > num]
        if valids:
            goal = min(valids)
        else:
            string += '0'
    print goal
