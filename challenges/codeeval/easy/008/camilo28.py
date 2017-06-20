"""
Reverse words
"""
def  reverse(file):
    for line in file:
        world = line.rstrip('\n').split(" ")
        world.reverse()
        sentense = str()
        for sen in world:
            if (sentense == ""):
                sentense = sen
            else:    
                sentense = sentense + " " +sen
        print sentense 
        
rute = raw_input("please enter the route of the file: ")        
file = open(rute)        
reverse(file)

