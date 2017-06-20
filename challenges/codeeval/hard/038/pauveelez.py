#!/usr/bin/python
import os
import sys
from itertools import product

def stringList(n, s):
	return ",".join(["".join(list(e)) for e in sorted(set(product(s, repeat=n)))])

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			n, s = line.strip().split(',')
			print stringList(int(n), s)
