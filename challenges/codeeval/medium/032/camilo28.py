"""
There are two strings: A and B. 
Print 1 if string B occurs at the end of string A. Otherwise, print 0. 
"""
import re
def trailing_string(file):
    """
    The first argument is a path to the input filename containing two comma-delimited strings, 
    one per line. Ignore all empty lines in the input file. 
    """
    for line in file:
        word = line.rstrip('\n').split(',')
        if (re.findall(word[1], word[0])):
            print 1
        else:
            print 0
            
rute = raw_input("please enter the rute to the file: ")
file = open(rute)
trailing_string(file)
