import sys,string

#test_cases = open(sys.argv[1], 'r')
test_cases = open('test.txt')

for test in test_cases:
    test = test.strip()
    test = test.split(",")
    nums = []
    strings = []

    for i in test:
        if i.isdigit():
            nums.append(i)
        else:
            strings.append(i)

    if len(strings) > 0 and len(nums) >0:
        print (','.join(strings) + "|" +','.join(nums))

    if len(strings) == 0 and len(nums) > 0:
        print (','.join(nums))

    if len(strings) > 0 and len(nums) == 0:
        print (','.join(strings))


test_cases.close()
