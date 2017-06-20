#!/usr/bin/python
import os
import sys

counts = {}

def count(n):
	if n <= 2:
		return n
	if n in counts:
		return counts[n]
	v = count(n-1) + count(n-2)
	counts[n] = v
	return v

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print count(int(line.strip()))
