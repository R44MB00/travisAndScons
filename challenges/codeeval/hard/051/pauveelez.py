#!/usr/bin/python
import os
import sys
from operator import itemgetter

def distance(p, q):
	return ((p[0]-q[0])**2 + (p[1]-q[1])**2)**0.5

def pair(ls):
	ls = sorted(ls, key=itemgetter(0, 1))
	dist, m = [], 40000
	for i in range(len(ls)-1):
		m = min(m, distance(ls[i], ls[i+1]))
	if m > 10000:
		return "INFINITY"
	else:
		return "%.4f" % m

points, n = [], 0

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			if n == 0:
				if len(points) > 0:
					print pair(points)
					points = []
				n = int(line.strip())
				if n == 0:
					break
			else:
				points.append(map(int, line.split()))
				n -= 1
