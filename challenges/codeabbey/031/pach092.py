"""This script contains strings rotated in accordance
with the rule above, separated by spaces."""
AMOUNT = int(raw_input())
ANSWER = []
for challenge in range(AMOUNT):
    data = raw_input().split()
    rotate = int(data[0])
    result = data[1][rotate:] + data[1][:rotate]
    ANSWER.append(result)
print ' '.join(ANSWER)
