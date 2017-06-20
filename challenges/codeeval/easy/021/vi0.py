import sys

fd = open(sys.argv[1])

for line in fd.readlines():
    sum = 0
    for digit in line[:-1]:
        sum+=int(digit)
    print sum
