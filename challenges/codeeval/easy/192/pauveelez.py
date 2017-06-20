#!/usr/bin/python
import os
import sys


def directions(o, p, r, q):
	a, b = 'hSN'[cmp(p, q)], 'hWE'[cmp(o, r)]
	if a == b:
		return 'here'
	return (a + b).replace('h', '')

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print directions(*map(int, line.split()))
