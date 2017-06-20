__author__ = 'cnoguera'
import sys
morse={"0":"-----","1": ".----","2": "..---","3": "...--","4": "....-","5":".....",
       "6": "-....","7": "--...","8": "---..","9": "----.","A": ".-","B": "-...",
       "C": "-.-.","D": "-..", "E": ".", "F": "..-.","G": "--.", "H": "....", "I": "..",
       "J": ".---","K": "-.-", "L": ".-..", "M": "--","N": "-.","O": "---", "P": ".--.",
       "Q": "--.-","R": ".-.", "S": "...", "T": "-", "U": "..-", "V": "...-","W": ".--",
       "X": "-..-", "Y": "-.--","Z": "--..","":""}
file = open(sys.argv[1],'r')
for line in file:
    lw=line.rstrip("\n").split(" ")
    lr=[]
    for i in lw:
        if i:
            for key,val in morse.items():
                if val==i:
                    lr.append(key)
        else:
            lr.append(" ")
    print "".join(lr)
file.close()
