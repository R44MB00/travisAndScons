import sys
file = open(sys.argv[1], 'r')
test_case = file.read().splitlines()
for test in test_case:
    test = test.replace("zero", "0").replace("one", "1")
    test = test.replace("two", "2").replace("three", "3")
    test = test.replace("four", "4").replace("five", "5")
    test = test.replace("six", "6").replace("seven", "7")
    test = test.replace("eight", "8").replace("nine", "9")
    test = test.replace(";", "")
    print test
   
