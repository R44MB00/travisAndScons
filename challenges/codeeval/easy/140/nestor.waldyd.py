'''
Created on 2 Feb 2016

@author: waldyd
'''

if __name__ == '__main__':
    pass

import sys

inputFile = open(sys.argv[1], 'r')

for line in inputFile:
    # ignore test if it is an empty line
    #print(line)
    words, stringIndex = [data.split() for data in line.split(';')] #Split String and then split List
    index = [int(index)-1 for index in stringIndex]                   #Typecast Indexes to sort dictionary automatically
    lastWordIndex =  [lastIndex for lastIndex in range(len(words)) if str(lastIndex+1) not in stringIndex]
    #print (index+lastWordIndex)
    sentence = dict(zip(index+lastWordIndex, words))
    #print (sentence)
    print " ".join(sentence[i] for i in range(len(words)))
    
inputFile.close()
