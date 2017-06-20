decenas = ["",
    " ten",
    " twenty",
    " thirty",
    " forty",
    " fifty",
    " sixty",
    " seventy",
    " eighty",
    " ninety"]

primeros = [" ",
    " one",
    " two",
    " three",
    " four",
    " five",
    " six",
    " seven",
    " eight",
    " nine",
    " ten",
    " eleven",
    " twelve",
    " thirteen",
    " fourteen",
    " fifteen",
    " sixteen",
    " seventeen",
    " eighteen",
    " nineteen"]


def num2txt(n):
    if n < 20:
        return (primeros[n].strip())
    x = int(math.floor ((n) / 10))
    #print "n= %i X= %d " % (n , x)
    #print n - x*10
    #print x 
    return (decenas[x].strip()+primeros[n-x*10]).strip()
    #return n
import sys, math

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
#int(test_case)
for test in test_case:
    #print test
    n = test.split(" ")
    x = []
    current = -1
    c = 0
    for i in n:

        if i == current:
            tmp = ((int(i), x[c-1][1]+1))
            x[c-1] = tmp 
        else:
            x.append((int(i), 1))
            current = i
            c = c + 1  
    w = ""
    for i in x:
        # print i[0], i[1] 
        t = " times " if i[1] > 1 else " time "
        w = w + str(i[1]) + " " +  str(i[0]) + " "
    print w.strip()
