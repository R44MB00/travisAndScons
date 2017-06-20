import sys
file = open(sys.argv[1], 'r')
text = file.read().splitlines()
for line in text:
    words = line.split(' ')
    for word in words:
        fd = word[0]
        txt = word[1:-1]
        ld = word[-1]
        print ld + txt + fd, 
    print ""
file.close()
