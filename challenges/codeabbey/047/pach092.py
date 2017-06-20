"""This script contains the decrypted message"""
i = raw_input().split()
Q, K = int(i[0]), int(i[1])
ANSWER = ""
ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
AMOUNT = len(ALPHABET)
for message in range(int(Q)):
    encr = raw_input()
    for char in encr:
        for t in range(AMOUNT):
            if char == ALPHABET[t]:
                if (t + 26 - int(K)) < 25:
                    ANSWER += ALPHABET[t + 26 - int(K)]
                else:
                    ANSWER += ALPHABET[t - int(K)]
            elif char == " ":
                ANSWER += char
                break
            elif char == ".":
                ANSWER += char + " "
                break
print ANSWER
