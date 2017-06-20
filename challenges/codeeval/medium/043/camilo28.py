"""
Title: Jolly Jumper
url: https://www.codeeval.com/open_challenges/43/
"""
import math
def jolly(file):
    """
    This fuction compute whether a sequence is Jolly or not
    is jolly when the sequence is  if the absolute values of the differences
    between successive elements take on all possible values 1 through n - 1.
    return: is jolly or not
    """
    for line in file:
        line = line.rstrip("\n").split(" ")
        if len(line) == 1:
            print "Jolly"
        else:
            jolly_list = []
            for id_x in range(len(line)-1):
                jolly_list.append(int(math.fabs(int(line[id_x]) - int(line[id_x + 1]))))
            jolly_list = sorted(jolly_list)
            for id_y in range(0,len(jolly_list)-1):
                if not jolly_list[id_y] == id_y+1:
                    out = "Not jolly"
                    break
                else:
                    out = "Jolly"
            print out

#----------------------------test---------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
jolly(file)
#----------------------------endtest------------------------
