#!/usr/bin/python
'''CodeAbbey Arithmetic Progression'''
NVAL = raw_input()
RESP = ''
for i in range(int(NVAL)):
    a, b, vals = raw_input().split()
    total = 0
    for num in range(int(vals)):
        total = total + (int(a) + (num * int(b)))
    RESP = RESP + '%d ' % total
print RESP
