#!/usr/bin/python
import os, sys, itertools

def sumZero(num):
	return len(filter(lambda x: sum(x) == 0, itertools.combinations(num, 4)))
  

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print sumZero(map(int, line.split(",")))
