
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip().split(" | ")
        total = 0
        code = ["c","o","d","e"]
        for i in range(1, len(line)):
            for j in range (1, len(line[0])):
                newline = [line[i][j], line[i][j - 1], line[i - 1][j], line[i - 1][j - 1]]
                if sorted(newline) == sorted(code):
                    total += 1
        print(total)