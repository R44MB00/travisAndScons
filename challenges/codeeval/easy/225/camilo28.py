"""
title: Testing
url: https://www.codeeval.com/open_challenges/225/
"""
def testing(file):
    """
    This fuction compare the result with the expected value
    file: testcase
    return: number the  bugs
    """
    for line in file:
        bug = 0
        bugs = {"Low":range(1,3),"Medium":range(3,5),"High":range(5,7)}
        test = line.rstrip("\n").replace(' ', '').split("|")
        if test[0] == test[1]:
            print "Done"
        else:
            for id_x in range(0,len(test[0])):
                if not test[0][id_x] == test[1][id_x]:
                    bug +=1
                if bug in bugs.values():
                    print bugs[bug]
            for k, v in bugs.iteritems():
                if bug in v:
                    out =  k
                else:
                    out = "Critical"
            print out
            #print bugs.values()
path = raw_input("Please enter the rute to the file: ")
file = open(path)
testing(file)
