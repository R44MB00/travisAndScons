"""This script contains message with corrupted bytes removed, highest bits
cleared - and represented as characters rather than numbers."""
DATA = raw_input().split(" ")
ANSWER = []
for a in DATA:
    binary = '{0:08b}'.format(int(a))
    text = []
    for b in binary:
        text.append(int(b))
    is_text = sum(text)
    if is_text % 2 == 0:
        if binary[0] == "1":
            binary = "0" + binary[1:8]
        ANSWER.append(chr(int(binary, 2)))
print ''.join(ANSWER)
