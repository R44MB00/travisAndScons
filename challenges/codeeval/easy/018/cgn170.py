import sys
file = open(sys.argv[1], 'r')
for test in file:
    test_num_list=test.rstrip("\n").split(",")
    x=int(test_num_list[0])
    n=int(test_num_list[1])
    while x>n:
            n=n*2
    print n
file.close()
