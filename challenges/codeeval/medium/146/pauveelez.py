#!/usr/bin/python
import os
import sys

def numbBat(l, p, b, *ns):
	if b:
		c = sum((j-i)//p-1 for i, j in zip(ns, ns[1:]))
		c += (ns[0] - 6)//p
		c += (l-6 - ns[-1])//p
	else:
		c = (l-12)//p + 1
	return c

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print numbBat(*(int(e) for e in line.rstrip().split()))
