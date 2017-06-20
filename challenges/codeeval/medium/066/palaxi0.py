"""Print the pascal triangle in order by depth"""
import itertools
import sys


def triangle(rows):
    """
    Modified function to build the pascal triangle, taken from
    http://stackoverflow.com/questions/3134813/pascals-triangle-in-python
    """
    newlist = []
    for rownum in range(rows):
        newvalue = 1
        printinglist = [newvalue]
        for iteration in range(rownum):
            newvalue = newvalue*(rownum-iteration)*1/(iteration+1)
            printinglist.append(int(newvalue))
        newlist.append(printinglist)
    return newlist

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        num = int(test.strip())
        if test.strip() != "":
            total = list(itertools.chain.from_iterable(triangle(int(num))))
            print " ".join([str(number) for number in total])
