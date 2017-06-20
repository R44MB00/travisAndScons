"""
Title: Major Element
CodeEval:Easy
url: https://www.codeeval.com/open_challenges/132/
"""
def major(file):
    for line in file:
        nums = line.rstrip("\n").split(',')
        aux = []
        con = 0
        for value in nums:
            aux.append(int(value))
        maxi = max(aux)
        for val in aux:
            if maxi == val:
                con +=1
        if con == 1:
            print maxi
        else:
            print "None"

rute = raw_input("Please enter the rute:")
file = open(rute)
major(file)
