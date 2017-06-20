
import sys

with open(sys.argv[1], 'r') as test_cases:
    cont = 1
    cont2 = 0
    for test in test_cases:
        stringe = test.strip()
        newstring =""
        dicci = {1:', yeah!',2:', this is crazy, I tell ya.',3:', can U believe this?',
        4:', eh?',5:', aw yea.',6:', yo.',7:'? No way!',8:'. Awesome!'}
        # .!.!
        # .
        for item in stringe:
            if cont > 8:
                cont = 1
            if (item == "." or item == "?" or item == "!") and cont2 == 1:
                newstring += dicci[cont]
                cont +=1
                cont2 = 0
            elif (item == "." or item == "?" or item == "!") and cont2== 0:
                newstring += item
                cont2 = 1
            else:
                newstring += item
                
        print (newstring)