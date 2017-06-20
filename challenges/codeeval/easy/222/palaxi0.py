
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        persons = line.split(" | ")[0].split(" ")
        blackcard = int(line.split(" | ")[1])
        while len(persons) != 1:
            erase = blackcard % len(persons) - 1
            del persons[erase]
        print(persons[0])
        