"""
Title: Strings and arrows
url: https://www.codeeval.com/open_challenges/203/
"""
def string_arrows(file):
    """
    This fuction compute the num the arrows in a file
    """
    arrows = {">>-->":0, "<--<<":0}
    for line in file:
        line = line.rstrip("\n")
        lenght = 5
        num_arr = 0
        con = 0
        while con + lenght <= len(line):
            aux = ""
            for id_x in range(con, con + lenght):
                aux += line[id_x]
            con += 1
            #print aux
            if aux in arrows.keys():
                num_arr += 1
        print num_arr

#-------------------testcase-----------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
string_arrows(file)
#----------------------testcase----------------------
