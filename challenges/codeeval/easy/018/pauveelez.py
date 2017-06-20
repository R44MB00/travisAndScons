#!/usr/bin/python
import os
import sys

def multiples(x, n):
	num = n
	while x > n:
		n += num
	return n

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			x, n = map(int, line.strip().split(","))
			print multiples(x, n)
