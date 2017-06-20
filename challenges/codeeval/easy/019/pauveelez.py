#!/usr/bin/python
import os
import sys

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			n, p1, p2 = map(int, line.strip().split(","))
			n = list(bin(n))
			n.reverse()
			if(n[p1-1] == n[p2-1]):
				print "true"
			else:
				print "false"
