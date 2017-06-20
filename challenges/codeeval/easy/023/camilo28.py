"""
Title: Multiplication Tables

"""
n=1
while n <= 12:
    output = ""
    for a in range(1,13):
        if output == "":
                output = ""
        if len(str(n * a)) ==1:
            output +="    "+ str(n * a)
        elif len(str(n * a)) ==2:
            output += "   " + str(n * a)
        elif len(str(n * a)) ==3:
            output += "  " + str(n * a)
    print output[3:]
    n +=1
