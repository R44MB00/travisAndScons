"""
Title: Minimum Coins
url: https://www.codeeval.com/open_challenges/74/
"""
def minimum_coins(file):
    """
    This fucntion return the number to coins to return to a customer
    file: number of testcases
    return: number of coins
    """
    for line in file:
        value = int(line.rstrip("\n"))
        coint = []
        #this while can change for a recursive function, is another way for the solution
        while value >= 5:
            value = value - 5
            coint.append(5)
        while value >= 3 and value < 5:
            value = value - 3
            coint.append(3)
        while value >= 1 and value < 3:
                value = value - 1
                coint.append(1)
        print len(coint)


#------------------testcase----------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
minimum_coins(file)
#------------------endtestcase------------------------
