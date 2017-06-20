"""
Title: Max range sum
url: https://www.codeeval.com/open_challenges/17/
"""
def max_gain(file):
    """
    this fuction calcule the maxi sum in a substring
    file: testcase input
    """
    for line in file:
        gains = line.rstrip("\n").split(",")
        maxi = float("-inf")
        for nums_d in range(2,len(gains)+1):
            con = 0
            while con + nums_d <= len(gains):
                aux = []
                for id_x in range(con, con + nums_d):
                    aux.append(int(gains[id_x]))
                con += 1

                if sum(aux) > maxi:
                    maxi = sum(aux)
        print maxi

#------------------testcase---------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
max_gain(file)
#-------------------endtestcase-----------------------
