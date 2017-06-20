import sys

def get_file():
    filename = sys.argv[1]
    with open(filename) as f:
        lines = f.readlines()
        lines = [i.strip('\n') for i in lines]
        return lines
# Fizz Buzz
lines = get_file()
for line in lines:
    fizz, buzz, num = [int(i) for i in line.split(" ")]
    seq = []    
    for i in xrange(1, num+1):
        seq.append("")        
        if i % fizz and i % buzz:
            seq[i-1] = str(i)
            continue
        if i % fizz == 0:
            seq[i-1] = "F"
        if i % buzz == 0:
            seq[i-1] += "B"        
    print " ".join([str(i) for i in seq])
  