
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        list1 = stringe.split(" | ")
        list2 = list1[0].split(" ")
        kha = 0
        for item in list2:
            for c in list1[1]:
                if c in item:
                    kha +=1
            if kha == len(list1[1]):
                print (item)
                break
            else:
                print (False)
                break