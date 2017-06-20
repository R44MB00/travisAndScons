"""
You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed. 
"""
def unique(file):
    
    for line in file:
        uniques = []
        out = ""
        var = line.rstrip('\n').split(',')
        #var.sort()
        for value in var:
            if not int(value) in uniques:
                uniques.append(int(value))
        uniques.sort()
        #print uniques
        for uni in uniques:
            if out == "":
                out = str(uni)
            else:
                out = out +  "," + str(uni)
        print out
            
rute = raw_input("Please enter the rute the the file: ")
file = open(rute)
unique(file)
        
