"""Word Search made by GoXo."""

import sys


def next_char(line2, copy_board2, idx2, kn2):
    """Using recursion to find next char in the maze"""
    copy_board2[idx2] = 'x'
    kn2 = kn2 + 1
    if kn2 == len(line2):
        return True
    direction = [1, -1, -5, 5]

    for dio in direction:

        if (copy_board2[idx2+dio] != 'x'
                and copy_board2[idx2+dio] == line2[kn2]):

            if next_char(line2, copy_board2, idx2+dio, kn2):
                return True

    return False


with open(sys.argv[1], 'r') as test_cases:

    for test in test_cases:

        board = list("xxxxxABCExSFCSxADEExxxxx")
        line = test.strip()
        indices = [idx for idx, c in enumerate(board) if c == line[0]]

        for idx in indices:

            copy_board = list(board)
            res = True
            k = 0
            res = next_char(line, copy_board, idx, k)

            if res:
                break

        print res
