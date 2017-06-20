"""
Title: Nice angles
Description: Convert a float number to angles
"""
def angles(file):
    for line in file:
        line = line.rstrip("\n")
        num = float(line)
        #Take the int of number
        ent = int(num)
        #convert the decimals to minutes
        minu = int(60 * (num - ent))
        #convert the rest to seconds
        sec = int(60 * (60 * (num - ent) - minu))
        if sec == 0:
            sec = "00"
        if minu == 0:
            minu = "00"
        print str(ent)+"."+ str(minu) +'\'' + str(sec)+"\""


#--------------------TestCase------------------------------
path = raw_input("Please enter the rute to the file")
file = open(path)
angles(file)
#--------------------endTescase------------------------------
