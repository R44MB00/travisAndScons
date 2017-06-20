import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    test = test.replace("a", "0").replace("b", "1").replace("c", "2").replace("d", "3").replace("e", "4")
    test = test.replace("f", "5").replace("g", "6").replace("h", "7").replace("i", "8").replace("j", "9")
    digitos = [x for x in test if x.isdigit()]
    if len(digitos) == 0:
        print "NONE"
    else:
        print ''.join(digitos)
