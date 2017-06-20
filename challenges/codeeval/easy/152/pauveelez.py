#!/usr/bin/python
import os
import sys
from bisect import bisect

def distribution(age):
    s = ('Home', 'Preschool Maniac', 'Elementary school', 'Middle school', 'High school',
         'College', 'Working for the man', 'The Golden Years', 'This program is for humans')
    a = [0, 3, 5, 12, 15, 19, 23, 66, 101]
    return s[bisect(a, age)-1]

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print distribution(int(line.rstrip()))
