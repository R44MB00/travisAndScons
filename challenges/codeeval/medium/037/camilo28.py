"""
e sentence 'A quick brown fox jumps over the lazy dog' contains every single letter in the alphabet. Such sentences are called pangrams. You are to write a program, which takes a sentence, and returns all the letters it is missing (which prevent it from being a pangram). You should ignore the case of the letters in sentence, and your return should be all lower case letters, in alphabetical order. You should also ignore all non US-ASCII characters.In case the input sentence is already a pangram, print out the string NULL 
"""

def pangrams(file):
    letter = [ chr(one) for one in range(97,123)]
    for line in file:
        out = ""
        tem = []
        sentense = line.rstrip('\n').lower()
        for l in sentense:
            if not l == " ":
                tem.append(l)
        for char in letter:
            if  not char in tem:
                out = out + char
        if out == "":
            print "NULL" 
        else:
            print out

rute = raw_input("Please enter the rute to the file: ")
file = open(rute)
pangrams(file)
