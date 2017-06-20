import sys
def reverse(text):
    if len(text) <= 1:
        return text

    return reverse(text[1:]) + text[0]
    
def sumdigitos(x):
    if x > 9:
        return x - 9
    return x
    
with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    t = test.replace(" ", "")
    t = reverse(t)
    c = 0
    tmp = 0
    for i in t:

        
        if c % 2 != 0:
            tmp = tmp + sumdigitos(int(i)*2)
            #print "sum ",  sumdigitos(int(i)*2)
        else:
            tmp = tmp + int(i)
            #print int(i)
        c = c + 1            
    last = tmp % 10
    #print "tmp: ", tmp, "mod:", last

    print "1" if last == 0 else "0"
    #exit()
