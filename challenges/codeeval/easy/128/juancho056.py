import sys

def compress(secuence):
    answer = []
    last = secuence[0]
    count = 0

    for i in secuence:
        if i == last:
            count += 1
        else:
            answer.append(str(count))
            answer.append(last)
            last = i
            count = 1
    answer.append(str(count))
    answer.append(last)

    return " ".join(answer)


test_cases= open("input.txt", "r") 
for test in test_cases:
    print(compress(test.rstrip().split(" ")))
