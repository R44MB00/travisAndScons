
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        stringe = test.strip()
        nums = [int(i) for i in stringe.split(";")[0].split(",")]
        number = int(stringe.split(";")[1])
        numsdup = nums
        total = []
        for item in nums:
            for i in numsdup:
                if item + i == number:
                    total.append(str(item)+","+str(i))
                    numsdup.remove(i)
        if len(total) >0 :
            print (";".join(total))
        else:
            print("NULL")