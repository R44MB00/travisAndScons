import sys
test_cases = open(sys.argv[1], 'r')
sumatory=0
for test in test_cases:
    sumatory=sumatory+int(test)
print(sumatory)
test_cases.close()
