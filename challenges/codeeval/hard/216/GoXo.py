"""Everything or Nothing by GoXo"""
import sys


VAL = {0: '', 1: 'grant', 2: 'write', 3: 'write, grant', 4: 'read',
       5: 'read, grant', 6: 'read, write', 7: 'read, write, grant'}


def parse_simple(mat, parts):
    """Method to parse user=>file=>action"""
    ret = ['F', 'G', 0]
    user = int(parts[0][-1])
    fil = int(parts[1][-1])
    action = parts[2]
    per = mat[user - 1][fil - 1]

    ret[2] = fil

    if action in VAL[per]:
        ret[0] = 'T'
        if 'grant' in VAL[per]:
            ret[1] = 'G'
    return ret


def allow(mat, portion):
    """Method to return the matrix with the changed values
    telling if it's true or not the user=>file=>action"""

    ret = mat[:]
    parts = portion.split('=>')
    parse = parse_simple(mat, parts)

    if parse[0] == 'T':
        ret[6][0] = 1
        if len(parts) > 3:

            if parse[1] == 'G':
                action = parts[3]

                user = int(parts[4][-1])
                fil = parse[2]
                per = 0

                for key, value in VAL.iteritems():
                    if value == action:
                        per = key

                ret[user - 1][fil - 1] = per

            else:
                ret[6][0] = 0
    else:
        ret[6][0] = 0

    return ret


with open(sys.argv[1], 'r') as test_cases:

    for test in test_cases:
        canvas = [[7, 3, 0], [6, 2, 4], [5, 1, 5],
                  [3, 7, 1], [6, 0, 2], [4, 2, 6], [0]]
        matrix = canvas[:]
        line = test.strip()
        portions = line.split()
        ans = False

        for p in portions:
            matrix = allow(matrix, p)
            if matrix[6][0] == 0:
                ans = False
                break
            else:
                ans = True
        print ans
