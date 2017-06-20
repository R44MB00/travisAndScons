"""
Title: Mixed content
CodeEval: Easy
url: https://www.codeeval.com/open_challenges/115/
"""
def separete(file):
    for line in file:
        line = line.rstrip("\n").split(',')
        nums = [ str(n) for n in range(0,10)]
        alpha = []
        beta = []
        out = ""
        for value in line:
            if value[0] in nums:
                beta.append(value)
            else:
                alpha.append(value)

        for n in alpha:
            if not n == "":
                if out == "":
                    out = n
                else:
                    out = out + ","+ n
        if not out == "" and not len(beta) == 0 :
            out += "|"
        for n in beta:
                if not n == "":
                    if out == "" or out[-1] == "|":
                        out += n
                    else:
                        out = out + ","+ n

        print out

#----------------------test--------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
separete(file)
#--------------------ent_test..................
