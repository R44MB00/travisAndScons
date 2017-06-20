#!/usr/bin/env python2
# encoding: utf-8

import sys

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

indexes = {i: int(n) for i, n in enumerate(test_cases) if ',' not in n}
matrices = []

for i in sorted(indexes.keys()):
    matrices.append(
        [
            [int(j) for j in test_cases[i].split(',')]
            for i in range(i+1, i + indexes[i] + 1)
        ]
    )

for matrix in matrices:
   
    diagonals = []

    last_row = end = len(matrix) - 1

    for diagonal in xrange(2 * end - 1, -1, -1):
        for number in xrange(diagonal - end, end + 1):
            diagonals.append((diagonal - number, number))
            if number == 0:
                end -= 1

   
    for row, col in diagonals:
        if row == last_row:
            matrix[row][col] = matrix[row][col] + matrix[row][col + 1]
        elif col == last_row:
            matrix[row][col] = matrix[row][col] + matrix[row + 1][col]
        else:
            matrix[row][col] = min(matrix[row][col] + matrix[row][col + 1],
                                matrix[row][col] + matrix[row + 1][col])

    print matrix[0][0]
