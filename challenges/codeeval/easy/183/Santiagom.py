import sys

test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test = test.strip()
    matrix = test.split(',')
    iterations = 0
    while True:
        finished = False
        for col in range(0, len(matrix)):
            row = matrix[col]
            if '.Y' in row and 'XY' not in row:
                matrix[col] = row.replace('.Y', 'Y')
            else:
                finished = True
                break
        if finished:
            break
        iterations += 1
    print (iterations)

test_cases.close()

