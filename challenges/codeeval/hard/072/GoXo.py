"""MinPathSum made by GoXo."""
import sys


def parse_board(current_board, size):
    """Main Algorith to build the dinamic matrix"""
    ans = [[x*0 for x in range(size)]for x in range(size)]
    ans[0][0] = current_board[0][0]

    for i in range(1, size):
        ans[i][0] = ans[i-1][0] + current_board[i][0]

    for j in range(1, size):
        ans[0][j] = ans[0][j-1] + current_board[0][j]

    for i in range(1, size):
        for j in range(1, size):
            ans[i][j] = current_board[i][j] + min(ans[i][j-1], ans[i-1][j])

    print ans[size-1][size-1]


with open(sys.argv[1], 'r') as test_cases:

    for test in test_cases:

        line = test.strip()
        prox = len(line)

        if prox <= 2:
            board = list()
            nxn = int(line)
            count = nxn
            continue

        board.append([int(item) for item in line.split(',')])
        count -= 1

        if count == 0:
            parse_board(board, nxn)
