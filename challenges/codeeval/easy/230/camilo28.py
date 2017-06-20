"""
title: Football
url: https://www.codeeval.com/open_challenges/230/
"""
def football(file):
    """
    this fuction return the num fans by teams
    file: rute to the test case
    """
    for line in file:
        word = line.rstrip("\n").rstrip(" ").split("|")
        countries = {}
        world = []
        out = ""
        for fans in word:
            fan = fans.split(" ")
            world.append(fan)
            for id_x in fan:
                if not id_x == "":
                    countries[int(id_x)] = ""
        for id_x in countries.keys():
            for id_y in  range(len(world)):
                if str(id_x) in world[id_y] and not id_x == "" :
                    countries[int(id_x)] += str(id_y +1) + ","
        for id_x in sorted(countries.keys()):
            out +=  str(id_x) + ":" + countries[id_x][0:-1] + "; "
        print out

#------------------------testcase-------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
football(file)
#------------------------testCase--------------------------
