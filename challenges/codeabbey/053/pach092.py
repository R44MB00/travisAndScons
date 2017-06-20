"""This script should give only letter Y or N for each of test-cases, meaning
that King could be taken or not respectively. Separate letters with spaces."""
AMOUNT = int(input())
ANSWER = ""
K = [0]*2
Q = [0]*2
VECTOR = [0]*2
for i in range(AMOUNT):
    TEST = raw_input().split()
    K[0] = ord(TEST[0][0])-97
    K[1] = int(TEST[0][1])-1
    Q[0] = ord(TEST[1][0])-97
    Q[1] = int(TEST[1][1])-1
    VECTOR[0] = Q[0] - K[0]
    VECTOR[1] = Q[1] - K[1]
    if VECTOR[0] == 0 or VECTOR[1] == 0:
        ANSWER += "Y "
        continue
    elif abs(VECTOR[0]) == abs(VECTOR[1]):
        ANSWER += "Y "
        continue
    ANSWER += "N "
print ANSWER
