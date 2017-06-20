"""
title: Array Absurdity
CodeEval Moderate
https://www.codeeval.com/open_challenges/41/
"""
def array_absurdity(file):
    """
    file:  program should accept as its first argument a path to a filename
    """
    for line in file:
        nums = line.rstrip('\n').split(';')
        lenght = nums[0]
        out = ""
        aux = []
        values = nums[1].split(',')
        for num in range(0,int(lenght)):
            if not values[num] in aux:
                aux.append(values[num])
            else:
                if len(out) == 0:
                    out = values[num]
                else:
                    out = out + "," +  values[num]
        print out

rute = raw_input('Please enter the rute of the file: ')
file = open(rute)
array_absurdity(file)
