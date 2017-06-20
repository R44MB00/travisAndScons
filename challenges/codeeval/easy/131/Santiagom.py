import sys,string




#test_cases = open(sys.argv[1], 'r')
test_cases = open('test.txt')

for test in test_cases:
    test = test.strip()
    test = test.split(" ")
    patron = test[1]
    alpha = string.ascii_lowercase[:len(test[0])]
    mapa = list(zip(test[0],alpha))

    for i in patron:
        for j in mapa:
            if i in j[1]:
                patron = patron.replace(i,j[0])

    if "-" in patron:
        patron = patron.split("-")
        print (int(patron[0]) - int(patron[1]))

    if "+" in patron:
        patron = patron.split("+")
        print (int(patron[0]) + int(patron[1]))

test_cases.close()
