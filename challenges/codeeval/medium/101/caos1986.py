import sys
import math
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    v=test.split(", ")
    a=v[0].replace("(","")
    a=a.replace(")","")
    a=a.split(",")
    b=v[1].replace("(","")
    b=b.replace(")","")
    b=b.split(",")
    c=v[2].replace("(","")
    c=c.replace(")","")
    c=c.split(",")
    d=v[3].replace("(","")
    d=d.replace(")","")
    d=d.split(",") 
    if math.sqrt((int(a[0])-int(b[0]))**2+((int(a[1])-int(b[1]))**2))==math.sqrt((int(c[0])-int(d[0]))**2+((int(c[1])-int(d[1]))**2)) and math.sqrt((int(a[0])-int(c[0]))**2+((int(a[1])-int(c[1]))**2))==math.sqrt((int(b[0])-int(d[0]))**2+((int(b[1])-int(d[1]))**2)) and math.sqrt((int(a[0])-int(d[0]))**2+((int(a[1])-int(d[1]))**2))==math.sqrt((int(b[0])-int(c[0]))**2+((int(b[1])-int(c[1]))**2)):
        print "true"
    else:
        print "false"
        

test_cases.close()
