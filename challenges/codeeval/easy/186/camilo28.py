"""
Title: Max range sum
url: https://www.codeeval.com/open_challenges/186/
"""
def max_gain(file):
    """
    this fuction calcule what days is better invert for have a ganace
    file: testcase input
    """
    for line in file:
        line = line.split(";")
        nums_d = int(line[0])
        gains = line[1].rstrip("\n").split(" ")
        con = 0

        maxi = float("-inf")

        while con + nums_d <= len(gains):
            aux = []
            for id_x in range(con, con + nums_d):
                aux.append(int(gains[id_x]))

            con += 1
            #print aux
            if sum(aux) > maxi:
                maxi = sum(aux)
        if maxi <= 0:
            print 0
        else:
            print maxi
path = raw_input("Please enter the rute to the file: ")
file = open(path)
max_gain(file)
