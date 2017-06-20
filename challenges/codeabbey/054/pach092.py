"""This script contains the values of c^2 for each triple found"""
AMOUNT = int(input())
for data in range(AMOUNT):
    s = int(input())//2
    count1, count2 = 1, 2
    while 1 == 1:
        while count2 * count2 + count2 * count1 < s:
            count2 += 1
        if count2 * count2 + count2 * count1 == s:
            break
        else:
            count1 += 1
            count2 = 1
    c = (count1 * count1 + count2 * count2) ** 2
    print c, ' '
