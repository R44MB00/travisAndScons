"""
Title: Prime numbers
CodeEval: Moderate
url:
"""
def count(file):
    """
    file: enter a path
    """
    for line in file:
        val = line.rstrip("\n")
        out = ""
        for num in range(1, int(val) + 1):
            if isprime(num):
                if out == "":
                    out = str(num)
                else:
                    out = out + "," + str(num)
        print out

def isprime(num):
    """
    auxiliar function
    return True if the num is prime
    num: enter the value to compute
    """
    if num == 2:
        return True
    else:
        con = 0
        for div in range(1, num+1):
            if num % div == 0:
                con += 1
        if con == 2:
            return True
        else:
            return False

#----------------------test---------------------------------
path = raw_input("Please enter the rute file: ")
file = open(path)
count(file)
#---------------------endtest-------------------------------
