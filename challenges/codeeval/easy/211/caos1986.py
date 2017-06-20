import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    t=test.split("|")
    lett=t[1].strip()
    wines=t[0].strip().split(" ")
    s=""
    for i in wines:
		sum=0
		pos=0
		cop=i
		for j in lett:
			i=i.replace(j,"",1)
		if len(cop)-len(lett) == len(i):
			s+=cop+" "
    if len(s) == 0:
        s="False"
    print s

test_cases.close()
