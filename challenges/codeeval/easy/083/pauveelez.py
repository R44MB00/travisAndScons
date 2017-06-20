#!/usr/bin/python
import os
import sys

def beauthy(s):
	h = {}
	for e in s:
		if e >= 'a' and e <= 'z':
			h[e] = h[e]+1 if e in h else 1
	vv, ss = 26, 0
	for v in sorted(h.values(), reverse=True):
		ss += v * vv
		vv -= 1
	return ss

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print beauthy(line.strip().lower())
