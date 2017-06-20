"""
Title: Minimum Distante
url: https://www.codeeval.com/open_challenges/189/
"""
import math as m
def min_dist(file):
    """
    File: testcase
    """
    for line in file:
        line = line.rstrip("\n").split(" ")
        num_frieds = int(line[0])
        address = line[1:len(line)]
        sum_dis = 0
        ubication = 0
        out = 0
        for id_x in address:
            sum_dis += int(id_x)
        ubication = sum_dis / num_frieds
        for dist in address:
            out += m.fabs(int(dist) - int(ubication))
        print int(out)

#-----------------------testcase-------------------------
path = raw_input("Please enter the rute to the file test: ")
file = open(path)
min_dist(file)
#-----------------------endtestcase------------------------
