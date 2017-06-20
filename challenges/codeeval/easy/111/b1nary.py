#for python 2.7
import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    test =  test.replace('\n', '')
    test = test.split(' ')
    longest = test[0]
    for word in test:
        if len(word) > len(longest):
            longest = word
    print(longest)

test_cases.close()
