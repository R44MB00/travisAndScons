import sys
def myFirstFunction():
    return open(sys.argv[1], 'r')
openFile = myFirstFunction()

for line in openFile:
    print (line.swapcase()) 
openFile.close()
