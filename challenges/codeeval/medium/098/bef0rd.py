import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    s = test.split(";")
    centerx, centery = s[0].split(",")
    centerx = float(centerx.split("(")[1])
    centery = float(centery.split(")")[0])

    radio = float(s[1].split(" ")[2])
    puntox, puntoy = s[2].split(",")
    
    puntox = float(puntox.split("(")[1])
    puntoy = float(puntoy.split(")")[0])
    if centerx - radio <= puntox <= centerx + radio:
        if centery - radio <= puntoy <= centery + radio:
            print "true"
            continue

    print "false"
