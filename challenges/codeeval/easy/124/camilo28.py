"""
Title: Road Trip
url: https://www.codeeval.com/open_challenges/124/
"""
def road_trip(file):
    """
    This function compute the distance between the cities in the road
    return: the distance between each city
    file: rute to the testcases
    """
    for line in file:
        line = line.rstrip("\n").split(";")
        city = []
        dist = []
        for road in line:
            city.append(road.split(","))
        city.pop()
        for id_x in city:
            dist.append(int(id_x[1]))
        print ",".join(map(str,calcu_dist(dist)))

def calcu_dist(dist):
    """
    this is a function auxilar that compute the distances
    dist: list to the cities and distance
    return: list with the result
    """
    out = []
    dist = sorted(dist)
    for id_x in range(len(dist)-1):
        out.append(dist[id_x+1] - dist[id_x])
    out.insert(0,dist[0])
    return out

#---------------testcase--------------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
road_trip(file)
#---------------endtestcase----------------------------
