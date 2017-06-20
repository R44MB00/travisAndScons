import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    if test == "":
        pass

    data = test.split(" |")
    names = data[0].split(" ")
    position = data[1]
    
    while len(names) > 1:
        winer = int(position) % len(names) - 1
        names.pop(winer)

    print names[0]
test_cases.close()
