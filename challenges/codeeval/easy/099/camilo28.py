import math
def dist(file):
    """
    You have coordinates of 2 points and need to find the distance between them.
    """
    result = []
    for line in file:
        p = []
        tup = line.replace("(", "" ).replace(")", "" ).replace(" ", "," ).rstrip('\n').split(",")
        for val in tup:
            if not val == "":
                p.append(int(val))
        dist = int(math.sqrt((p[0] - p[2]) ** 2 + (p[1] - p[3]) ** 2))
        print dist

rute = raw_input("please enter the rute of the file: ")
file = open(rute)
dist(file)
