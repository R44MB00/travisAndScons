import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    data=test.split(" ")
    if (int(data[1])*int(data[2]))==0:
        print ((int(data[0])-12)/int(data[1]))+1 if ((int(data[0])-12)/int(data[1]))+1 >= 0 else 0
    else:
        print (int(data[0])-12-(int(data[1])*int(data[2])))/int(data[1]) if (int(data[0])-12-(int(data[1])*int(data[2])))/int(data[1]) >= 0 else 0

test_cases.close()
