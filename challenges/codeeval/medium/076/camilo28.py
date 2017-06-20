"""
Me
"""
from collections import deque
def rotation(file):
    """
    You are given two strings. Determine if the second string is a rotation of the first string.
    """
    for line in file:
        rotated = deque()
        word = line.rstrip('\n').split(',')
        for val in word[0]:
          rotated.append(val)
        if word[1] in moves(rotated):
            print True
        else:
            print False

    #    for move in range(len(rotated)):
    #        rotated.rotate(move)

def moves(list_word):
    words = []
    for move in range(len(list_word)):
            out = ""
            list_word.rotate(move)
            print list_word
            for value in list_word:
                out = out + value
            words.append(out)
    #print words
    return words

rute = raw_input("Please enter the rute to the file: ")
file = open(rute)
rotation(file)
