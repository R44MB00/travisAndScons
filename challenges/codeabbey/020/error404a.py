"""This function count the number
or vowels in a text"""


def numofvowels(data):
    """Count vowels"""
    temp = data.split("\n")
    cont = 0
    res = ""
    vowels = "a,o,u,i,e,y"
    for idx in range(0, int(temp[0])):
        for letter in temp[idx+1]:
            if letter in vowels:
                cont += 1
        res += str(cont) + " "
        cont = 0
    print res
