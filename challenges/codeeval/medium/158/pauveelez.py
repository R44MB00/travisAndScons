#!/usr/bin/python
import os
import sys

def sortBubble(num, r):
	l, i = len(num), 0
	while i < r:
		curr, is_sorted = -1, True
		for j in xrange(1, l):
			if num[j-1] > num[j]:
				num[j-1], num[j] = num[j], num[j-1]
				curr, is_sorted = j, False
		if is_sorted:
			break
		l = curr
		i += 1
	return num

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			ns, k = line.rstrip().split('|')
			print " ".join(str(e) for e in sortBubble(map(int, ns.split()), int(k)))
