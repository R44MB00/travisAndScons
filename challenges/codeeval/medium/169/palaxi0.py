"""Get a file according a pattern"""
import re
import sys


with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test = test.strip()
        pattern = test.split(" ")[0]
        line = test.split(" ")[1::]
        pattern = re.sub(r"\.", r"\.", pattern)
        pattern = re.sub(r"\*", ".*", pattern)
        pattern = re.sub(r"\?", ".", pattern)
        pattern = pattern.replace(pattern, pattern+"$")
        solutions = []
        for item in line:
            if re.match(pattern, item):
                solutions.append(item)
        if len(solutions) != 0:
            print " ".join(solutions)
        else:
            print "-"
