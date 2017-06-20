#!/usr/bin/env python2
# encoding: utf-8

import operator
import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()


for test in test_cases:
    expression = test.split()
    operators = {
        '+': operator.add,
        '*': operator.mul,
        '/': operator.truediv
    }

    stack = []
    for i in expression[::-1]:
        if i not in operators:
            stack.append(int(i))
        else:
            operand_a = stack.pop()
            operand_b = stack.pop()
            result = operators[i](operand_a, operand_b)
            stack.append(result)
    print int(round(stack.pop()))
