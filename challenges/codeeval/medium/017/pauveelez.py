#!/usr/bin/python
import sys,os

def sumInter(num):
	l, m = len(num), 0
	for i in xrange(l):
		for j in xrange(i+1, l+1):
			m = max(m, sum(num[i:j]))
	return m

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print sumInter(map(int, line.split(",")))
