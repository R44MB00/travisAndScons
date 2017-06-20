#!/usr/bin/env python2
# encoding: utf-8

"""
Happy Numbers.

Challenge Description:

A happy number is defined by the following process. Starting with any positive
integer, replace the number by the sum of the squares of its digits, and repeat
the process until the number equals 1 (where it will stay), or it loops
endlessly in a cycle which does not include 1. Those numbers for which this
process ends in 1 are happy numbers, while those that do not end in 1 are
unhappy numbers.

Input sample:

The first argument is the pathname to a file which contains test data, one test
case per line. Each line contains a positive integer. E.g.

1
7
22

Output sample:

If the number is a happy number, print out 1. If not, print out 0. E.g

1
1
0

For the curious, here's why 7 is a happy number: 7->49->97->130->10->1. Here's
why 22 is NOT a happy number:
    22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...

"""

import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

for test in test_cases:
    all_nums, happy, num = [], 1, test
    while num != 1:
        num = sum(int(i) ** 2 for i in str(num))
        if num in all_nums:
            happy = 0
            break
        else:
            all_nums.append(num)
    print happy
