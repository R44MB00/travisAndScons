"""GRAY CODE DECODER """

import sys

def graytodecimal(num):
    """GRAY CODE CONVERTER"""
    num = num ^ (num >> 16)
    num = num ^ (num >> 8)
    num = num ^ (num >> 4)
    num = num ^ (num >> 2)
    num = num ^ (num >> 1)
    return num

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        print " | ".join([str(graytodecimal(int(i, 2))) for i in test.strip().split(" | ")])
