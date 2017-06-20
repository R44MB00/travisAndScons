__author__ = 'cnoguera'
import sys

file = open(sys.argv[1], 'r')
for line in file:
    line=line.rstrip("\n")
    test_list=line.split("|")
    size=int(test_list[0])
    word=test_list[1].replace(" ","")
    list_blocks=test_list[2].split()
    count=0
   # print "\n\nWord = "+word
    for i in range(0,len(word),1):
        #print "Letra = "+word[i]
        for j in list_blocks:
            if word[i] in j:
               # print "Bloque = "+j
                list_blocks.remove(j)
                count+=1
                break
    if count == len(word):
        print "True"
    else:
        print "False"
file.close()
