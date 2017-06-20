"""This code receives the 100 50-digits numbers as input
and outputs the first 10 digits of its total sum"""


NUM = 0
for i in range(100):
    NUM += int(raw_input())
print str(NUM)[:10]
