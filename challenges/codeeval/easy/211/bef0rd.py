import sys

with open(sys.argv[1]) as f:
    test_case = f.read().strip().splitlines()

for test in test_case:
    vinos, b = test.split(" | ")
    vinos = vinos.split(" ")
    b = b.strip()
    out = ""
    for i in vinos:
        flag = True
        for j in b:
            if b.lower().count(j) >  i.lower().count(j):
                flag = False
                break
            
        if flag:
            out = out + " " + i
    if out == "":
        out = "False"
    print out.strip()
