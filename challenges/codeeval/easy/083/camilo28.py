"""
Title: Beautiful strings
url: https://www.codeeval.com/open_challenges/83/
"""
def compute(file):
    """
    This function compute when beautiful is a string
    file: rute to the testcase
    return: max beautiful
    """
    alpha = {}
    for line in file:
        for id_x in range(97,123):
            alpha[chr(id_x)] = 0
        point = 1
        beauty = 0
        line = line.rstrip("\n").lower()
        for frec in line:
            if frec in alpha:
                alpha[frec] += 1

        for x in  sorted(alpha, key=alpha.get):
            #print point
            beauty += alpha[x] * point
            point += 1

        print beauty


#--------------------testcase--------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
compute(file)
#.................endtestcase-------------------------
