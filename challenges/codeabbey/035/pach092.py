"""This script contains number of years to
wait for each case, separated by spaces."""
AMOUNT = int(raw_input())
ANSWER = ''
for a in range(AMOUNT):
    data = raw_input().split()
    s, r, p = data[0], data[1], data[2]
    total = round(float(s), 2)
    counter = 0
    while total < round(float(r), 2):
        total = round((total * (1 + (float(p) / 100))), 2)
        counter += 1
    ANSWER = ANSWER + '%d ' % counter
print ANSWER
