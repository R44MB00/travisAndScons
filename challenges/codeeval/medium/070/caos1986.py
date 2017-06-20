import sys

def valueInRange(value, min, max):
    return (value >= min) and (value <= max);

def rectOverlap(x1,x2,y1,y2,w1,w2,h1,h2):
    xOverlap = valueInRange(x1, x2, x2 + w2) or valueInRange(x2, x1, x1 + w1)
    yOverlap = valueInRange(y1, y2, y2 + h2) or valueInRange(y2, y1, y1 + h1)
    return xOverlap and yOverlap

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    l = test.split(",")
    h1=abs(int(l[0])-int(l[2]))
    w1=abs(int(l[1])-int(l[3]))
    h2=abs(int(l[4])-int(l[6]))
    w2=abs(int(l[5])-int(l[7]))
    print rectOverlap(int(l[0]),int(l[4]),int(l[3]),int(l[7]),w1,w2,h1,h2)

test_cases.close()
