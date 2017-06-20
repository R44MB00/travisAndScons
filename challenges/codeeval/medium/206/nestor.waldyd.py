'''
Created on 6 Feb 2016

@author: waldyd
'''

if __name__ == '__main__':
    pass
import sys

''' Calculate binomial coefficient xCy = x! / (y! (x-y)!)
'''
from math import factorial as fac
def binomial(x, y):
    try:
        binom = fac(x) // fac(y) // fac(x - y)
    except ValueError:
        binom = 0
    return binom

inputLines = open(sys.argv[1], 'r')
luckyTickets =0
for input_ in inputLines:
    digitRange = int(float(input_)/2)
    
    for n in range(digitRange):
        #print(n)
        '''
        the general solution for the number of 2k-digit happy numbers base b is
        [; \sum_{n=0}^{k-1} (-1)^n \binom{2k}{n} \binom{(k-n)b + (k-1)}{2k-1} ;]
        '''
        luckyTickets += (-1)**n * binomial(2*digitRange, n) * binomial((digitRange-n)*10 + (digitRange-1), 2*digitRange-1)
                                                             
    print(luckyTickets)
    luckyTickets =0
inputLines.close()

'''

def sumValues (value):
    #print(list(value))
    return sum(int(float(i)) for i in list(value))


    numBlock = [] * int(float(input_)/2)
    #lastBlock = [] * int(float(input_)/2)
    for num in range(0,int(float(input_)/2)):   
       numBlock.append(9)
    
    #print (firstBlock, lastBlock)
    upperBound = upperBound.join(str(e) for e in numBlock)
    #print(upperBound)
    for i in range (0, int(float(upperBound))+1):
        for j in range (0, int(float(upperBound))+1):
            #print(sumValues(str(i).zfill(2)))
            if sumValues(str(i).zfill(2)) == sumValues(str(j).zfill(2)): # TODO: Find the Lucky Ticket Condition                
                luckyNumber += 1
                    
    #print(sumValues('17'))
    upperBound=''
    print(luckyNumber)
    luckyNumber = 0
'''
