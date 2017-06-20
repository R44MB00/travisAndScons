"""This code finds the index of the first
fibonacci term with one thousand digits"""


NUM1, NUM, I = 1, 0, 0
while len(str(NUM)) < 1000:
    NUM0, NUM1, I = NUM1, NUM, I + 1
    NUM = NUM0 + NUM1
print I, NUM
