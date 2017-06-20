#!/usr/bin/python
import os
import sys

def palindro_range(l, r):
	ls = []
	for e in xrange(l, r+1):
		s = str(e)
		ls.append(1 if s == s[::-1] else 0)
	ll, cnt = len(ls), 0
	for i in xrange(ll):
		for j in xrange(i, ll):
			if sum(ls[i:j+1])%2 == 0:
				cnt += 1
	return cnt

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			l, r = map(int, line.strip().split())
			print palindro_range(l, r)
