import sys

file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()

for test in test_case:
    #print test
    w, z = test.split(";")
    w = w.split(" ")
    z = z.split(" ")
    #print w, z
    x = {}
    for i in range(len(w)):
        w1 = w[i]
        try:
            z1 = int(z[i])
        except:
            z1 = 9999
        x[z1] = w1
    #x.sort(key=lambda xww:xww[1])
    out = ""
    for i in range(1, len(x)+1):
        if i in x.keys():
            out += " " + x[i]
        else:
            out += " " + x[9999]
    print out.strip()
