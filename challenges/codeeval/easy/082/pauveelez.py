#!/usr/bin/python
import os
import sys

def armnumber(n):
	l = len(n)
	return sum(map(lambda e: int(e)**l, n)) == int(n)

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print armnumber(line.strip())
