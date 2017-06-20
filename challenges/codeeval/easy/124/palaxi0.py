import sys
import re
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        #Take one by one the lines in "test_cases" and put them inside "line"
        distances = sorted([int(i) for i in re.findall("\d+",line)])
        #Take all numbers from line and put them in a list as integers, then sort that list and put them in the variable 
        #distances
        distances_reduced = []
        #Make a variable call "distances_reduced"
        lastcity = 0
        #Make value of lastcity 0 to start there
        for i in distances:
        	#iterate over "distances"
            distances_reduced.append(str(i-lastcity))
            #Get the difference between next city's distance(i) and the actual one (lastcity)
            #Make that a string and put it inside distances_reduced
            lastcity = i
            #Make "lastcity" equal to the one we substract
        print (",".join(distances_reduced))
        #Print all distances with "," between them.
