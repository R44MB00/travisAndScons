"""Climbing stairs by GoXo"""
import sys


STEP_LIST = [0 for i in range(1001)]


def pos(num):
    """Count possibiliries recursively"""
    if num < 0:
        return 0
    if num == 0:
        return 1

    if STEP_LIST[num] > 0:
        return STEP_LIST[num]

    STEP_LIST[num] = pos(num - 1) + pos(num - 2)
    return STEP_LIST[num]


with open(sys.argv[1], 'r') as test_cases:

    for test in test_cases:
        line = test.strip()
        print pos(int(line))
