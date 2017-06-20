""" Program to sum divide and multiply an expresion given some signs"""
import sys
import re
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        nums = [int(i) for i in re.findall(r"\d+", line)]
        operators = re.findall(r"(\+|\*|/)", line)
        total = nums[0]
        for i in range(1, len(nums)):
            if operators[-i] == "*":
                total *= nums[i]
            elif operators[-i] == "/":
                total = total // nums[i]
            else:
                total += nums[i]
        print (total)
