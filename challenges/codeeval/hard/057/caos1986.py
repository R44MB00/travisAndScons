import sys

def rotate(l):
    if len(l)==0:
        return []
    md=[]
    for j in range(len(l[0])-1,-1,-1):
        t=[]
        for i in range(len(l)):
            t.append(l[i][j])
        md.append(t)
    return md

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test=test.strip()
    if len(test)==0:
        continue
    l = test.split(";")
    el=l[2].split(" ")
    m=[]
    if len(el)==0:
        continue
    for i in range(int(l[0])):
        r=[]
        for j in range(int(l[1])):
            r.append(el[(i*int(l[1]))+j])
        m.append(r)
    out=""
    while len(m)>0:
        for i in range(len(m[0])):
            out+=m[0][i]+" "
        m.remove(m[0])
        m=rotate(m)
    print out
test_cases.close()
