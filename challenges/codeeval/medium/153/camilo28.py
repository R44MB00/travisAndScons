"""
Title: Locks
url: https://www.codeeval.com/open_challenges/153/
"""
def locks(file):
    """
    This fuction compute the number the door open and closet
    """
    for line in file:
        line = line.rstrip("\n").split(" ")
        doors = [True for x  in range(int(line[0]))]
        iteration = int(line[1])
        con = 0
        out = 0
        while con <= iteration:
            for id_x in range(1,len(doors) + 1):
                #when the door is power of two
                if id_x % 2 == 0:
                    #change the state
                    doors[id_x - 1] = not doors[id_x - 1]
                if id_x % 3 == 0:
                    doors[id_x - 1] = not doors[id_x - 1]
            con += 1
        #change the state the last door in the last iteration
        doors[-1] = not doors[-1]
        for state in doors:
            if state == True:
                out += 1
        print out

#-----------------------testcase----------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
locks(file)
#---------------------endtestcase---------------------
