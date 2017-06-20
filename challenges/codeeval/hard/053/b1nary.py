import sys
import re

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        if len(test) <=1 :
            continue
        longest = ''
        lsize = 0
        substrings = []
        for word in test.split(' '):
            for i in range(len(word)):
                for j in range(len(word),i,-1):
                    tmp = word[i:j]
                    if len(word)>1 and len(tmp)==1:
                        continue
                    ltmp = len(re.findall(tmp,test))
                    if ltmp > lsize or (ltmp >= lsize and len(tmp)> len(longest)):
                        for x in substrings:
                            if tmp in x:
                                break
                        else:
                            longest = tmp
                            lsize = ltmp
                            if len(re.findall(tmp,test))>1 :
                                substrings.append(tmp)
                            
                        continue
        if lsize <= 1:
            print 'NONE'
        else:
            print longest
