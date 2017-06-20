import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    score = {}
    category = test.split(" | ")
    for x in range(0, len(category)):
        score[x] = category[x].split(" ")
    
    for i in range(0, len(score[0])):
        major = -9999999999
        for x in range(0, len(category)):
            if int(score[x][i]) > major:
                major = int(score[x][i])
        print major,
    print ""        
file.close()
