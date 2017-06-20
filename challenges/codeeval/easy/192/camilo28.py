"""
Title: Compare Points
url: https://www.codeeval.com/open_challenges/192/
"""
def compare(file):
    """
    Compare two points a compute the adress of the vector
    file: rute to the testcase
    """
    for line in file:
        line = line.rstrip("\n").split(" ")
        out = ""
        x0 = int(line[0])
        y0 = int(line[1])
        x1 = int(line[2])
        y1 = int(line[3])
        p1 = tuple((x0,y0))
        p2 = tuple((x1,y1))
        res = (x1-x0,y1-y0)
        if(res[0] == 0 and res[1] > 0):
            out = "N"
        elif(res[0] == 0 and res[1] < 0):
            out = "S"
        elif(res[1] == 0 and res[0] > 0):
             out = "E"
        elif(res[1] == 0 and res[0] < 0):
            out = "W"
        elif(res[0] > 0 and res[1] > 0):
            out = "NE"
        elif(res[0] > 0 and res[1] < 0):
            out = "SE"
        elif(res[0] < 0 and res[1] > 0):
            out = "NW"
        elif(res[0] < 0 and res[1] < 0):
            out = "SW"
        else:
            out = "here"
        print out

#path = raw_input("Please enter the rute to the file: ")
file = open("/home/camilo/test_25")
compare(file)
