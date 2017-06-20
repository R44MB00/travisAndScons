import sys

handle = open(sys.argv[1], 'r')
test_cases = handle.read().splitlines()
for test in test_cases:
    if test == "":
        continue

    data = test.split(';')
    day = data[0]
    gains = data[1].split(' ')

    mini = 0
    maxi = len(gains) - int(day)
    print "maxi: len(gains) - int(day) -> maxi: %d - %d" % (len(gains), int(day))

    major = 0
    count = 0
    for x in gains:
        
        tmp = 0
        for i in range(0, maxi):
            tmp += int(gains[count+i])
        
        print "tmp:%d, count: %d, maxi: %d, x: %s, i: %d, gains[count+i]: %s" % (tmp, count, maxi, x, i, gains[count+i])
        if tmp > major:
            major = tmp
            print "nuevo major: %d" % major
        count += 1
        if count == maxi:
            break
        
    print major 
    print "\n\r"      

handle.close()
