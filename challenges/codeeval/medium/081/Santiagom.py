import sys
import itertools
#test_cases = open("test.txt")
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()

    valores = map(int, test.split(','))
    combinations = [list(x) for x in itertools.combinations(valores, 4)]

    result = 0
    for c in combinations:
        total = 0
        for i in c:
            total += i

        if total == 0:
            result += 1

    print (result)

test_cases.close()
