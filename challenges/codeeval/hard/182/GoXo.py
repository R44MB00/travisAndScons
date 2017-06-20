
"""Longest Path by GoXo"""
import sys
import math


class LongesthPath(object):
    """class to create and parse matrix"""

    alpha_list = []
    matrix = []
    maxi = 0
    nxn = 0
    chain = ''

    def __init__(self, chain, nxn):
        self.nxn = nxn
        self.maxi = 0
        self.alpha_list = []
        self.chain = chain
        self.matrix = []

    def create_matrix(self):
        """Create and return a new matrix"""

        row = []

        for idx in range(1, (self.nxn * self.nxn + 1)):
            row.append(self.chain[idx - 1])
            if idx % self.nxn == 0:

                self.matrix.append(row)
                row = []

    def parse_matrix(self, m_x, m_y):
        """parse recurively the matrix"""

        if len(self.alpha_list) > self.maxi:
            self.maxi = len(self.alpha_list)

        if (m_x < 0) or (m_x >= self.nxn) or (m_y < 0) or (m_y >= self.nxn):
            return

        char = self.matrix[m_x][m_y]

        if char not in self.alpha_list:
            self.alpha_list.append(char)
        else:
            return

        self.parse_matrix(m_x, m_y + 1)
        self.parse_matrix(m_x + 1, m_y)
        self.parse_matrix(m_x, m_y - 1)
        self.parse_matrix(m_x - 1, m_y)

        self.alpha_list.remove(char)


with open(sys.argv[1], 'r') as test_cases:

    for test in test_cases:
        line = test.strip()
        lp = LongesthPath(line, int(math.sqrt(len(line))))
        lp.create_matrix()
        for i in range(0, lp.nxn):
            for j in range(0, lp.nxn):
                lp.parse_matrix(i, j)
        print lp.maxi
